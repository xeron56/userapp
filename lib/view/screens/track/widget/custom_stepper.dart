import 'package:flutter/material.dart';
import 'package:flutter_restaurant/utill/color_resources.dart';
import 'package:flutter_restaurant/utill/dimensions.dart';
import 'package:flutter_restaurant/utill/styles.dart';

class CustomStepper extends StatelessWidget {
  final bool isActive;
  final bool haveTopBar;
  final String title;
  final Widget child;
  final double height;
  CustomStepper({@required this.title, @required this.isActive, this.child, this.haveTopBar = true, this.height = 30});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

      haveTopBar ? Row(children: [
        Container(
          height: height,
          width: 2,
          margin: EdgeInsets.only(left: 14),
          color: isActive ? ColorResources.COLOR_PRIMARY : ColorResources.COLOR_GREY,
        ),
        child == null ? SizedBox() : child,
      ]) : SizedBox(),

      Row(children: [
        isActive ? Icon(Icons.check_circle, color: ColorResources.COLOR_PRIMARY, size: 30) : Container(
          padding: EdgeInsets.all(7),
          margin: EdgeInsets.only(left: 6),
          decoration: BoxDecoration(border: Border.all(color: ColorResources.COLOR_GREY, width: 2), shape: BoxShape.circle),
        ),
        SizedBox(width: isActive ? Dimensions.PADDING_SIZE_EXTRA_SMALL : Dimensions.PADDING_SIZE_SMALL),
        Text(title, style: isActive ? rubikMedium.copyWith(fontSize: Dimensions.FONT_SIZE_LARGE)
            : rubikRegular.copyWith(fontSize: Dimensions.FONT_SIZE_LARGE)),
        // Expanded(child: SizedBox()),
        // isActive ? Text('10:32 am', style: rubikRegular.copyWith(fontSize: Dimensions.FONT_SIZE_SMALL, color: ColorResources.COLOR_GREY)) : SizedBox(),
      ]),

    ]);
  }
}
