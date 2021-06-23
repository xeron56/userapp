import 'package:flutter/material.dart';
import 'package:flutter_restaurant/data/model/response/cart_model.dart';
import 'package:flutter_restaurant/data/model/response/product_model.dart';
import 'package:flutter_restaurant/helper/date_converter.dart';
import 'package:flutter_restaurant/helper/price_converter.dart';
import 'package:flutter_restaurant/localization/language_constrants.dart';
import 'package:flutter_restaurant/provider/cart_provider.dart';
import 'package:flutter_restaurant/provider/product_provider.dart';
import 'package:flutter_restaurant/provider/splash_provider.dart';
import 'package:flutter_restaurant/provider/theme_provider.dart';
import 'package:flutter_restaurant/provider/wishlist_provider.dart';
import 'package:flutter_restaurant/utill/color_resources.dart';
import 'package:flutter_restaurant/utill/dimensions.dart';
import 'package:flutter_restaurant/utill/images.dart';
import 'package:flutter_restaurant/utill/styles.dart';
import 'package:flutter_restaurant/view/base/custom_button.dart';
import 'package:flutter_restaurant/view/base/rating_bar.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class CartBottomSheet extends StatelessWidget {
  final Product product;
  final bool fromSetMenu;
  final Function callback;
  final CartModel cart;
  final int cartIndex;
  CartBottomSheet({@required this.product, this.fromSetMenu = false, this.callback, this.cart, this.cartIndex});

  @override
  Widget build(BuildContext context) {
    bool fromCart = cart != null;
    Provider.of<ProductProvider>(context, listen: false).initData(product, cart);
    Variation _variation = Variation();

    return Container(
      padding: EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
      ),
      child: Consumer<ProductProvider>(
        builder: (context, productProvider, child) {

          double _startingPrice;
          double _endingPrice;
          if(product.choiceOptions.length != 0) {
            List<double> _priceList = [];
            product.variations.forEach((variation) => _priceList.add(variation.price));
            _priceList.sort((a, b) => a.compareTo(b));
            _startingPrice = _priceList[0];
            if(_priceList[0] < _priceList[_priceList.length-1]) {
              _endingPrice = _priceList[_priceList.length-1];
            }
          }else {
            _startingPrice = product.price;
          }

          List<String> _variationList = [];
          for(int index=0; index < product.choiceOptions.length; index++) {
            _variationList.add(product.choiceOptions[index].options[productProvider.variationIndex[index]].replaceAll(' ', ''));
          }
          String variationType = '';
          bool isFirst = true;
          _variationList.forEach((variation) {
            if(isFirst) {
              variationType = '$variationType$variation';
              isFirst = false;
            }else {
              variationType = '$variationType-$variation';
            }
          });

          double price = product.price;
          for(Variation variation in product.variations) {
            if(variation.type == variationType) {
              price = variation.price;
              _variation = variation;
              break;
            }
          }
          double priceWithDiscount = PriceConverter.convertWithDiscount(context, price, product.discount, product.discountType);
          double priceWithQuantity = priceWithDiscount * productProvider.quantity;
          double addonsCost = 0;
          List<AddOn> _addOnIdList = [];
          for(int index=0; index<product.addOns.length; index++) {
            if(productProvider.addOnActiveList[index]) {
              addonsCost = addonsCost + (product.addOns[index].price * productProvider.addOnQtyList[index]);
              _addOnIdList.add(AddOn(id: product.addOns[index].id, quantity: productProvider.addOnQtyList[index]));
            }
          }
          double priceWithAddons = priceWithQuantity + addonsCost;

          DateTime _currentTime = Provider.of<SplashProvider>(context, listen: false).currentTime;
          DateTime _start = DateFormat('hh:mm:ss').parse(product.availableTimeStarts);
          DateTime _end = DateFormat('hh:mm:ss').parse(product.availableTimeEnds);
          DateTime _startTime = DateTime(_currentTime.year, _currentTime.month, _currentTime.day, _start.hour, _start.minute, _start.second);
          DateTime _endTime = DateTime(_currentTime.year, _currentTime.month, _currentTime.day, _end.hour, _end.minute, _end.second);
          if(_endTime.isBefore(_startTime)) {
            _endTime = _endTime.add(Duration(days: 1));
          }
          bool _isAvailable = _currentTime.isAfter(_startTime) && _currentTime.isBefore(_endTime);

          CartModel _cartModel = CartModel(
            price, priceWithDiscount, [_variation],
            (price - PriceConverter.convertWithDiscount(context, price, product.discount, product.discountType)),
            productProvider.quantity, price - PriceConverter.convertWithDiscount(context, price, product.tax, product.taxType),
            _addOnIdList, product,
          );
          bool isExistInCart = Provider.of<CartProvider>(context, listen: false).isExistInCart(_cartModel, fromCart, cartIndex);

          return SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

              //Product
              Row(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: FadeInImage.assetNetwork(
                    placeholder: Images.placeholder_rectangle,
                    image: '${Provider.of<SplashProvider>(context, listen: false).baseUrls.productImageUrl}/${product.image}',
                    width: 100, height: 100, fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text(
                      product.name, maxLines: 2, overflow: TextOverflow.ellipsis,
                      style: rubikMedium.copyWith(fontSize: Dimensions.FONT_SIZE_LARGE),
                    ),
                    RatingBar(rating: product.rating.length > 0 ? double.parse(product.rating[0].average) : 0.0, size: 15),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${PriceConverter.convertPrice(context, _startingPrice, discount: product.discount, discountType: product.discountType)}'
                              '${_endingPrice!= null ? ' - ${PriceConverter.convertPrice(context, _endingPrice, discount: product.discount,
                              discountType: product.discountType)}' : ''}',
                          style: rubikMedium.copyWith(fontSize: Dimensions.FONT_SIZE_LARGE),
                        ),
                        price == priceWithDiscount ? Consumer<WishListProvider>(
                            builder: (context, wishList, child) {
                              return InkWell(
                                onTap: () {
                                  wishList.wishIdList.contains(product.id)
                                      ? wishList.removeFromWishList(product, (message) {})
                                      : wishList.addToWishList(product, (message) {});
                                },
                                child: Icon(
                                  wishList.wishIdList.contains(product.id) ? Icons.favorite : Icons.favorite_border,
                                  color: wishList.wishIdList.contains(product.id) ? ColorResources.COLOR_PRIMARY : ColorResources.COLOR_GREY,
                                ),
                              );
                            }
                        ) : SizedBox(),
                      ],
                    ),
                    price > priceWithDiscount ? Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                      Text(
                        '${PriceConverter.convertPrice(context, _startingPrice)}'
                            '${_endingPrice!= null ? ' - ${PriceConverter.convertPrice(context, _endingPrice)}' : ''}',
                        style: rubikMedium.copyWith(color: ColorResources.COLOR_GREY, decoration: TextDecoration.lineThrough),
                      ),
                      Consumer<WishListProvider>(
                        builder: (context, wishList, child) {
                          return InkWell(
                            onTap: () {
                              wishList.wishIdList.contains(product.id)
                                  ? wishList.removeFromWishList(product, (message) {})
                                  : wishList.addToWishList(product, (message) {});
                            },
                            child: Icon(
                              wishList.wishIdList.contains(product.id) ? Icons.favorite : Icons.favorite_border,
                              color: wishList.wishIdList.contains(product.id) ? ColorResources.COLOR_PRIMARY : ColorResources.COLOR_GREY,
                            ),
                          );
                        }
                      ),
                    ]) : SizedBox(),
                  ]),
                ),
              ]),
              SizedBox(height: Dimensions.PADDING_SIZE_LARGE),

              // Quantity
              Row(children: [
                Text(getTranslated('quantity', context), style: rubikMedium.copyWith(fontSize: Dimensions.FONT_SIZE_LARGE)),
                Expanded(child: SizedBox()),
                Container(
                  decoration: BoxDecoration(color: ColorResources.getBackgroundColor(context), borderRadius: BorderRadius.circular(5)),
                  child: Row(children: [
                    InkWell(
                      onTap: () {
                        if (productProvider.quantity > 1) {
                          productProvider.setQuantity(false);
                        }
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: Dimensions.PADDING_SIZE_SMALL, vertical: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                        child: Icon(Icons.remove, size: 20),
                      ),
                    ),
                    Text(productProvider.quantity.toString(), style: rubikMedium.copyWith(fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE)),
                    InkWell(
                      onTap: () => productProvider.setQuantity(true),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: Dimensions.PADDING_SIZE_SMALL, vertical: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                        child: Icon(Icons.add, size: 20),
                      ),
                    ),
                  ]),
                ),
              ]),
              SizedBox(height: Dimensions.PADDING_SIZE_LARGE),

              // Variation
              ListView.builder(
                shrinkWrap: true,
                itemCount: product.choiceOptions.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text(product.choiceOptions[index].title, style: rubikMedium.copyWith(fontSize: Dimensions.FONT_SIZE_LARGE)),
                    SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                    GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 10,
                        childAspectRatio: (1 / 0.25),
                      ),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: product.choiceOptions[index].options.length,
                      itemBuilder: (context, i) {
                        return InkWell(
                          onTap: () {
                            productProvider.setCartVariationIndex(index, i);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(horizontal: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                            decoration: BoxDecoration(
                              color: productProvider.variationIndex[index] != i ? ColorResources.BACKGROUND_COLOR : ColorResources.COLOR_PRIMARY,
                              borderRadius: BorderRadius.circular(5),
                              border: productProvider.variationIndex[index] != i ? Border.all(color: ColorResources.BORDER_COLOR, width: 2) : null,
                            ),
                            child: Text(
                              product.choiceOptions[index].options[i].trim(), maxLines: 1, overflow: TextOverflow.ellipsis,
                              style: rubikRegular.copyWith(
                                color: productProvider.variationIndex[index] != i ? ColorResources.COLOR_BLACK : ColorResources.COLOR_WHITE,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: index != product.choiceOptions.length-1 ? Dimensions.PADDING_SIZE_LARGE : 0),
                  ]);
                },
              ),
              product.choiceOptions.length > 0 ? SizedBox(height: Dimensions.PADDING_SIZE_LARGE) : SizedBox(),

              fromSetMenu ? Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(getTranslated('description', context), style: rubikMedium.copyWith(fontSize: Dimensions.FONT_SIZE_LARGE)),
                SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                Text(product.description ?? '', style: rubikRegular),
                SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
              ]) : SizedBox(),

              // Addons
              product.addOns.length > 0 ? Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(getTranslated('addons', context), style: rubikMedium.copyWith(fontSize: Dimensions.FONT_SIZE_LARGE)),
                SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 10,
                    childAspectRatio: (1 / 1.1),
                  ),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: product.addOns.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        if(!productProvider.addOnActiveList[index]) {
                          productProvider.addAddOn(true, index);
                        }else if(productProvider.addOnQtyList[index] == 1) {
                          productProvider.addAddOn(false, index);
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(bottom: productProvider.addOnActiveList[index] ? 2 : 20),
                        decoration: BoxDecoration(
                          color: productProvider.addOnActiveList[index] ? ColorResources.COLOR_PRIMARY : ColorResources.BACKGROUND_COLOR,
                          borderRadius: BorderRadius.circular(5),
                          border: productProvider.addOnActiveList[index] ? null : Border.all(color: ColorResources.BORDER_COLOR, width: 2),
                          boxShadow: productProvider.addOnActiveList[index] ? [BoxShadow(color: Colors.grey[Provider.of<ThemeProvider>(context)
                              .darkTheme ? 700 : 300], blurRadius: 5, spreadRadius: 1)] : null,
                        ),
                        child: Column(children: [
                          Expanded(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                            Text(product.addOns[index].name, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: rubikMedium.copyWith(
                              color: productProvider.addOnActiveList[index]
                                  ? ColorResources.COLOR_WHITE : ColorResources.COLOR_BLACK,
                              fontSize: Dimensions.FONT_SIZE_SMALL,
                            )),
                            SizedBox(height: 5),
                            Text(
                              PriceConverter.convertPrice(context, product.addOns[index].price), maxLines: 1, overflow: TextOverflow.ellipsis,
                              style: rubikRegular.copyWith(color: productProvider.addOnActiveList[index] ? ColorResources.COLOR_WHITE
                                  : ColorResources.COLOR_BLACK, fontSize: Dimensions.FONT_SIZE_EXTRA_SMALL),
                            ),
                          ])),
                          productProvider.addOnActiveList[index] ? Container(
                            height: 25,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Theme.of(context).accentColor),
                            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    if (productProvider.addOnQtyList[index] > 1) {
                                      productProvider.setAddOnQuantity(false, index);
                                    }else {
                                      productProvider.addAddOn(false, index);
                                    }
                                  },
                                  child: Center(child: Icon(Icons.remove, size: 15)),
                                ),
                              ),
                              Text(productProvider.addOnQtyList[index].toString(), style: rubikMedium.copyWith(fontSize: Dimensions.FONT_SIZE_SMALL)),
                              Expanded(
                                child: InkWell(
                                  onTap: () => productProvider.setAddOnQuantity(true, index),
                                  child: Center(child: Icon(Icons.add, size: 15)),
                                ),
                              ),
                            ]),
                          ) : SizedBox(),
                        ]),
                      ),
                    );
                  },
                ),
                SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_SMALL),
              ]) : SizedBox(),

              Row(children: [
                Text('${getTranslated('total_amount', context)}:', style: rubikMedium.copyWith(fontSize: Dimensions.FONT_SIZE_LARGE)),
                SizedBox(width: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                Text(PriceConverter.convertPrice(context, priceWithAddons), style: rubikBold.copyWith(
                  color: ColorResources.COLOR_PRIMARY, fontSize: Dimensions.FONT_SIZE_LARGE,
                )),
              ]),
              SizedBox(height: Dimensions.PADDING_SIZE_LARGE),

              _isAvailable ? CustomButton(
                btnTxt: getTranslated(isExistInCart ? 'already_added_in_cart' : fromCart ? 'update_in_cart' : 'add_to_cart', context),
                backgroundColor: Theme.of(context).primaryColor,
                onTap: (!isExistInCart) ?  () {
                  if(!isExistInCart) {
                    Navigator.pop(context);
                    Provider.of<CartProvider>(context, listen: false).addToCart(_cartModel, cartIndex);
                    callback(_cartModel);
                  }
                } : null,
              ) : Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).primaryColor.withOpacity(0.1),
                ),
                child: Column(children: [
                  Text(getTranslated('not_available_now', context), style: rubikMedium.copyWith(
                    color: Theme.of(context).primaryColor,
                    fontSize: Dimensions.FONT_SIZE_LARGE,
                  )),
                  Text(
                    '${getTranslated('available_will_be', context)} ${DateConverter.convertTimeToTime(product.availableTimeStarts)} '
                        '- ${DateConverter.convertTimeToTime(product.availableTimeEnds)}',
                    style: rubikRegular,
                  ),
                ]),
              ),

            ]),
          );
        },
      ),
    );
  }
}


