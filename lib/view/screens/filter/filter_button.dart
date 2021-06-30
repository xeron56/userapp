import 'package:flutter/material.dart';

class FilterButton extends StatefulWidget {
  FilterButton({Key key}) : super(key: key);

  @override
  _FilterButtonState createState() => _FilterButtonState();
}

class _FilterButtonState extends State<FilterButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Text(
                                "Filter",
                                style: TextStyle(
                                  color: Color(
                                    0xff646464,
                                  ),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Poppins",
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(
                              width: 255,
                            ),
                            Container(
                              child:

                                  /// Detected as Icon
                                  /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                  Image.network(
                                "https://resource-hosting.s3.us-west-1.amazonaws.com/mvtAQewi-[object Object]",
                                width: 24,
                                height: 24,
                                fit: BoxFit.cover,
                              ),
                              padding: EdgeInsets.all(
                                10,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  30,
                                ),
                              ),
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 5,
                        ),
                      ),
                      Container(
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Sort",
                                      style: TextStyle(
                                        color: Color(
                                          0xffff4200,
                                        ),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: 24,
                                      height: 2,
                                      decoration: BoxDecoration(
                                        color: Color(
                                          0xffff4200,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          2,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 40),
                              Container(
                                child: Text(
                                  "Cuisines",
                                  style: TextStyle(
                                    color: Color(
                                      0xff646464,
                                    ),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ),
                              SizedBox(width: 40),
                              Container(
                                child: Text(
                                  "Attributes",
                                  style: TextStyle(
                                    color: Color(
                                      0xff646464,
                                    ),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ),
                              SizedBox(width: 40),
                              Container(
                                child: Text(
                                  "Prices",
                                  style: TextStyle(
                                    color: Color(
                                      0xff646464,
                                    ),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                          ),
                          padding: EdgeInsets.only(
                            top: 15,
                          ),
                        ),
                        height: 45,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        20,
                      ),
                      topRight: Radius.circular(
                        20,
                      ),
                      bottomLeft: Radius.circular(
                        0,
                      ),
                      bottomRight: Radius.circular(
                        0,
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(
                          0xa000000,
                        ),
                        offset: Offset(
                          0,
                          4,
                        ),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Text(
                              "Sort",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                fontFamily: "Poppins",
                              ),
                            ),
                            width: 335,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        child: Text(
                                          "Recomended (Default)",
                                          style: TextStyle(
                                            color: Color(
                                              0xff202020,
                                            ),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Poppins",
                                          ),
                                        ),
                                        width: 297,
                                      ),
                                      Container(
                                        child:

                                            /// Detected as Icon
                                            /// FIXME: Check your design. this is an icon of node "Group 684". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                            Image.network(
                                          "https://resource-hosting.s3.us-west-1.amazonaws.com/csfdHN7k-[object Object]",
                                          width: 28,
                                          height: 28,
                                          fit: BoxFit.cover,
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 5,
                                          vertical: 10,
                                        ),
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        child: Text(
                                          "Top rated",
                                          style: TextStyle(
                                            color: Color(
                                              0xff202020,
                                            ),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Poppins",
                                          ),
                                        ),
                                        width: 297,
                                      ),
                                      Container(
                                        child: Container(
                                          width: 28,
                                          height: 28,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(
                                                0xffff4200,
                                              ),
                                              width: 1,
                                            ),
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 5,
                                          vertical: 10,
                                        ),
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        child: Text(
                                          "Fasted delivery",
                                          style: TextStyle(
                                            color: Color(
                                              0xff202020,
                                            ),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Poppins",
                                          ),
                                        ),
                                        width: 297,
                                      ),
                                      Container(
                                        child: Container(
                                          width: 28,
                                          height: 28,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(
                                                0xffff4200,
                                              ),
                                              width: 1,
                                            ),
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 5,
                                          vertical: 10,
                                        ),
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 335,
                      height: 0.5,
                      decoration: BoxDecoration(
                        color: Color(
                          0xff929292,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Text(
                              "Cuisines",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                fontFamily: "Poppins",
                              ),
                            ),
                            width: 335,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        child: Text(
                                          "American (3)",
                                          style: TextStyle(
                                            color: Color(
                                              0xff202020,
                                            ),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Poppins",
                                          ),
                                        ),
                                        width: 297,
                                      ),
                                      Container(
                                        child:

                                            /// Detected as Icon
                                            /// FIXME: Check your design. this is an icon of node "Group 686". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                            Image.network(
                                          "https://resource-hosting.s3.us-west-1.amazonaws.com/h-j9C82A-[object Object]",
                                          width: 28,
                                          height: 28,
                                          fit: BoxFit.cover,
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 5,
                                          vertical: 10,
                                        ),
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        child: Text(
                                          "Bangladeshi (23)",
                                          style: TextStyle(
                                            color: Color(
                                              0xff202020,
                                            ),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Poppins",
                                          ),
                                        ),
                                        width: 297,
                                      ),
                                      Container(
                                        child: Container(
                                          width: 28,
                                          height: 28,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(
                                                0xffff4200,
                                              ),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
                                          ),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 5,
                                          vertical: 10,
                                        ),
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        child: Text(
                                          "Cafe (10)",
                                          style: TextStyle(
                                            color: Color(
                                              0xff202020,
                                            ),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Poppins",
                                          ),
                                        ),
                                        width: 297,
                                      ),
                                      Container(
                                        child: Container(
                                          width: 28,
                                          height: 28,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(
                                                0xffff4200,
                                              ),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
                                          ),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 5,
                                          vertical: 10,
                                        ),
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        child: Text(
                                          "Another options",
                                          style: TextStyle(
                                            color: Color(
                                              0xff202020,
                                            ),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Poppins",
                                          ),
                                        ),
                                        width: 297,
                                      ),
                                      Container(
                                        child: Container(
                                          width: 28,
                                          height: 28,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(
                                                0xffff4200,
                                              ),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
                                          ),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 5,
                                          vertical: 10,
                                        ),
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 335,
                      height: 0.5,
                      decoration: BoxDecoration(
                        color: Color(
                          0xff929292,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Text(
                              "Attributes",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                fontFamily: "Poppins",
                              ),
                            ),
                            width: 335,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        child: Text(
                                          "BBQ (12)",
                                          style: TextStyle(
                                            color: Color(
                                              0xff202020,
                                            ),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Poppins",
                                          ),
                                        ),
                                        width: 297,
                                      ),
                                      Container(
                                        child:

                                            /// Detected as Icon
                                            /// FIXME: Check your design. this is an icon of node "Group 686". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                            Image.network(
                                          "https://resource-hosting.s3.us-west-1.amazonaws.com/SNKaSLaj-[object Object]",
                                          width: 28,
                                          height: 28,
                                          fit: BoxFit.cover,
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 5,
                                          vertical: 10,
                                        ),
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        child: Text(
                                          "Beef (28)",
                                          style: TextStyle(
                                            color: Color(
                                              0xff202020,
                                            ),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Poppins",
                                          ),
                                        ),
                                        width: 297,
                                      ),
                                      Container(
                                        child: Container(
                                          width: 28,
                                          height: 28,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(
                                                0xffff4200,
                                              ),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
                                          ),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 5,
                                          vertical: 10,
                                        ),
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        child: Text(
                                          "Chaap (34)",
                                          style: TextStyle(
                                            color: Color(
                                              0xff202020,
                                            ),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Poppins",
                                          ),
                                        ),
                                        width: 297,
                                      ),
                                      Container(
                                        child: Container(
                                          width: 28,
                                          height: 28,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(
                                                0xffff4200,
                                              ),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
                                          ),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 5,
                                          vertical: 10,
                                        ),
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        child: Text(
                                          "Another options",
                                          style: TextStyle(
                                            color: Color(
                                              0xff202020,
                                            ),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Poppins",
                                          ),
                                        ),
                                        width: 297,
                                      ),
                                      Container(
                                        child: Container(
                                          width: 28,
                                          height: 28,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(
                                                0xffff4200,
                                              ),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
                                          ),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 5,
                                          vertical: 10,
                                        ),
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 335,
                      height: 0.5,
                      decoration: BoxDecoration(
                        color: Color(
                          0xff929292,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Text(
                              "Price",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                fontFamily: "Poppins",
                              ),
                            ),
                            width: 335,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        child: Text(
                                          "Below 200 tk",
                                          style: TextStyle(
                                            color: Color(
                                              0xff202020,
                                            ),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Poppins",
                                          ),
                                        ),
                                        width: 297,
                                      ),
                                      Container(
                                        child:

                                            /// Detected as Icon
                                            /// FIXME: Check your design. this is an icon of node "Group 686". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                            Image.network(
                                          "https://resource-hosting.s3.us-west-1.amazonaws.com/pchRiBae-[object Object]",
                                          width: 28,
                                          height: 28,
                                          fit: BoxFit.cover,
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 5,
                                          vertical: 10,
                                        ),
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        child: Text(
                                          "Within 400 tk",
                                          style: TextStyle(
                                            color: Color(
                                              0xff202020,
                                            ),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Poppins",
                                          ),
                                        ),
                                        width: 297,
                                      ),
                                      Container(
                                        child: Container(
                                          width: 28,
                                          height: 28,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(
                                                0xffff4200,
                                              ),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
                                          ),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 5,
                                          vertical: 10,
                                        ),
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        child: Text(
                                          "Within 600 tk",
                                          style: TextStyle(
                                            color: Color(
                                              0xff202020,
                                            ),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Poppins",
                                          ),
                                        ),
                                        width: 297,
                                      ),
                                      Container(
                                        child: Container(
                                          width: 28,
                                          height: 28,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(
                                                0xffff4200,
                                              ),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
                                          ),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 5,
                                          vertical: 10,
                                        ),
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        child: Text(
                                          "Within 800 tk",
                                          style: TextStyle(
                                            color: Color(
                                              0xff202020,
                                            ),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Poppins",
                                          ),
                                        ),
                                        width: 297,
                                      ),
                                      Container(
                                        child: Container(
                                          width: 28,
                                          height: 28,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(
                                                0xffff4200,
                                              ),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
                                          ),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 5,
                                          vertical: 10,
                                        ),
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        child: Text(
                                          "Up to 800 tk",
                                          style: TextStyle(
                                            color: Color(
                                              0xff202020,
                                            ),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Poppins",
                                          ),
                                        ),
                                        width: 297,
                                      ),
                                      Container(
                                        child: Container(
                                          width: 28,
                                          height: 28,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(
                                                0xffff4200,
                                              ),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              4,
                                            ),
                                          ),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 5,
                                          vertical: 10,
                                        ),
                                      ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                padding: EdgeInsets.only(
                  top: 30,
                  bottom: 100,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              20,
            ),
          ),
        ),
      ),
    );
  }
}