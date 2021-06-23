import 'package:flutter/material.dart';
import 'package:flutter_restaurant/data/model/response/cart_model.dart';
import 'package:flutter_restaurant/helper/price_converter.dart';
import 'package:flutter_restaurant/localization/language_constrants.dart';
import 'package:flutter_restaurant/provider/set_menu_provider.dart';
import 'package:flutter_restaurant/provider/splash_provider.dart';
import 'package:flutter_restaurant/provider/theme_provider.dart';
import 'package:flutter_restaurant/utill/color_resources.dart';
import 'package:flutter_restaurant/utill/dimensions.dart';
import 'package:flutter_restaurant/utill/images.dart';
import 'package:flutter_restaurant/utill/styles.dart';
import 'package:flutter_restaurant/view/base/rating_bar.dart';
import 'package:flutter_restaurant/view/base/title_widget.dart';
import 'package:flutter_restaurant/view/screens/home/widget/cart_bottom_sheet.dart';
import 'package:flutter_restaurant/view/screens/setmenu/set_menu_screen.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:intl/intl.dart';

class SetMenuView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Consumer<SetMenuProvider>(
      builder: (context, setMenu, child) {
        return Column(
          children: [

            Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
              child: TitleWidget(title: getTranslated('set_menu', context), onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => SetMenuScreen()));
              }),
            ),

            SizedBox(
              height: 220,
              child: setMenu.setMenuList != null ? setMenu.setMenuList.length > 0 ? ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: Dimensions.PADDING_SIZE_SMALL),
                itemCount: setMenu.setMenuList.length > 5 ? 5 : setMenu.setMenuList.length,
                itemBuilder: (context, index){

                  double _startingPrice;
                  double _endingPrice;
                  if(setMenu.setMenuList[index].choiceOptions.length != 0) {
                    List<double> _priceList = [];
                    setMenu.setMenuList[index].variations.forEach((variation) => _priceList.add(variation.price));
                    _priceList.sort((a, b) => a.compareTo(b));
                    _startingPrice = _priceList[0];
                    if(_priceList[0] < _priceList[_priceList.length-1]) {
                      _endingPrice = _priceList[_priceList.length-1];
                    }
                  }else {
                    _startingPrice = setMenu.setMenuList[index].price;
                  }

                  double _discount = setMenu.setMenuList[index].price - PriceConverter.convertWithDiscount(context,
                      setMenu.setMenuList[index].price, setMenu.setMenuList[index].discount, setMenu.setMenuList[index].discountType);

                  DateTime _currentTime = Provider.of<SplashProvider>(context, listen: false).currentTime;
                  DateTime _start = DateFormat('hh:mm:ss').parse(setMenu.setMenuList[index].availableTimeStarts);
                  DateTime _end = DateFormat('hh:mm:ss').parse(setMenu.setMenuList[index].availableTimeEnds);
                  DateTime _startTime = DateTime(_currentTime.year, _currentTime.month, _currentTime.day, _start.hour, _start.minute, _start.second);
                  DateTime _endTime = DateTime(_currentTime.year, _currentTime.month, _currentTime.day, _end.hour, _end.minute, _end.second);
                  if(_endTime.isBefore(_startTime)) {
                    _endTime = _endTime.add(Duration(days: 1));
                  }
                  bool _isAvailable = _currentTime.isAfter(_startTime) && _currentTime.isBefore(_endTime);

                  return InkWell(
                    onTap: () {
                      showModalBottomSheet(context: context, isScrollControlled: true, backgroundColor: Colors.transparent, builder: (con) => CartBottomSheet(
                        product: setMenu.setMenuList[index], fromSetMenu: true,
                        callback: (CartModel cartModel) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(getTranslated('added_to_cart', context)), backgroundColor: Colors.green));
                        },
                      ));
                    },
                    child: Container(
                      height: 220,
                      width: 170,
                      margin: EdgeInsets.only(right: Dimensions.PADDING_SIZE_SMALL, bottom: 5),
                      decoration: BoxDecoration(
                          color: Theme.of(context).accentColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [BoxShadow(
                            color: Colors.grey[Provider.of<ThemeProvider>(context).darkTheme ? 700 : 300],
                            blurRadius: 5, spreadRadius: 1,
                          )]
                      ),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [

                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                              child: FadeInImage.assetNetwork(
                                placeholder: Images.placeholder_rectangle,
                                image: '${Provider.of<SplashProvider>(context, listen: false).baseUrls.productImageUrl}/${setMenu.setMenuList[index].image}',
                                height: 110, width: 170, fit: BoxFit.cover,
                              ),
                            ),
                            _isAvailable ? SizedBox() : Positioned(
                              top: 0, left: 0, bottom: 0, right: 0,
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                                  color: Colors.black.withOpacity(0.6),
                                ),
                                child: Text(getTranslated('not_available_now', context), textAlign: TextAlign.center, style: rubikRegular.copyWith(
                                  color: Colors.white, fontSize: Dimensions.FONT_SIZE_SMALL,
                                )),
                              ),
                            ),
                          ],
                        ),

                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: Dimensions.PADDING_SIZE_SMALL),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
                              Text(
                                setMenu.setMenuList[index].name,
                                style: rubikMedium.copyWith(fontSize: Dimensions.FONT_SIZE_SMALL),
                                maxLines: 2, overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_SMALL),

                              RatingBar(
                                rating: setMenu.setMenuList[index].rating.length > 0 ? double.parse(setMenu.setMenuList[index].rating[0].average) : 0.0,
                                size: 12,
                              ),
                              SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_SMALL),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(
                                      '${PriceConverter.convertPrice(context, _startingPrice, discount: setMenu.setMenuList[index].discount,
                                          discountType: setMenu.setMenuList[index].discountType, asFixed: 1)}''${_endingPrice!= null
                                          ? ' - ${PriceConverter.convertPrice(context, _endingPrice, discount: setMenu.setMenuList[index].discount,
                                          discountType: setMenu.setMenuList[index].discountType, asFixed: 1)}' : ''}',
                                      style: rubikBold.copyWith(fontSize: Dimensions.FONT_SIZE_SMALL),
                                    ),
                                  ),
                                  _discount > 0 ? SizedBox() : Icon(Icons.add, color: Theme.of(context).textTheme.bodyText1.color),
                                ],
                              ),
                              _discount > 0 ? Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                Flexible(
                                  child: Text(
                                    '${PriceConverter.convertPrice(context, _startingPrice, asFixed: 1)}'
                                        '${_endingPrice!= null ? ' - ${PriceConverter.convertPrice(context, _endingPrice, asFixed: 1)}' : ''}',
                                    style: rubikBold.copyWith(
                                      fontSize: Dimensions.FONT_SIZE_EXTRA_SMALL,
                                      color: ColorResources.COLOR_GREY,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                ),
                                Icon(Icons.add, color: Theme.of(context).textTheme.bodyText1.color),
                              ]) : SizedBox(),
                            ]),
                          ),
                        ),

                      ]),
                    ),
                  );
                },
              ) : Center(child: Text(getTranslated('no_set_menu_available', context))) : SetMenuShimmer(),
            ),
          ],
        );
      },
    );
  }
}

class SetMenuShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: Dimensions.PADDING_SIZE_SMALL),
      itemCount: 10,
      itemBuilder: (context, index){
        return Container(
          height: 200,
          width: 150,
          margin: EdgeInsets.only(right: Dimensions.PADDING_SIZE_SMALL, bottom: 5),
          decoration: BoxDecoration(
              color: ColorResources.COLOR_WHITE,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(color: Colors.grey[300], blurRadius: 10, spreadRadius: 1)]
          ),
          child: Shimmer.fromColors(
            baseColor: Colors.grey[300],
            highlightColor: Colors.grey[100],
            enabled: Provider.of<SetMenuProvider>(context).setMenuList == null,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

              Container(
                height: 110, width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                    color: ColorResources.COLOR_WHITE
                ),
              ),

              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(height: 15, width: 130, color: ColorResources.COLOR_WHITE),

                    Align(alignment: Alignment.centerRight, child: RatingBar(rating: 0.0, size: 12)),
                    SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_SMALL),

                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                      Container(height: 10, width: 50, color: ColorResources.COLOR_WHITE),
                      Icon(Icons.add, color: ColorResources.COLOR_BLACK),
                    ]),
                  ]),
                ),
              ),

            ]),
          ),
        );
      },
    );
  }
}

