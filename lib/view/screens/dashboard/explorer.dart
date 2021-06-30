
import 'package:flutter/material.dart';

class Explorer extends StatelessWidget {
  const Explorer({Key key}) : super(key: key);

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
                child: Row(
                  children: [
                    /// Detected as Icon
                    /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                    Image.network(
                      "https://resource-hosting.s3.us-west-1.amazonaws.com/ldM5IxMR-[object Object]",
                      width: 21,
                      height: 21,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Text(
                              "Dhaka",
                              style: TextStyle(
                                color: Color(
                                  0xffff4200,
                                ),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins",
                              ),
                            ),
                            width: 270,
                            height: 14,
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          SizedBox(
                            child: Text(
                              "Mirpur - 12",
                              style: TextStyle(
                                color: Color(
                                  0xff202020,
                                ),
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                fontFamily: "Poppins",
                              ),
                            ),
                            width: 270,
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),

                    /// Detected as Icon
                    /// FIXME: Check your design. this is an icon of node "Frame 60". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                    Image.network(
                      "https://resource-hosting.s3.us-west-1.amazonaws.com/0MwJV7g4-[object Object]",
                      width: 24,
                      height: 24,
                      fit: BoxFit.cover,
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
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
              SizedBox(
                height: 13.8,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          /// Detected as Icon
                          /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                          Image.network(
                            "https://resource-hosting.s3.us-west-1.amazonaws.com/-e4DygXF-[object Object]",
                            width: 24,
                            height: 24,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          SizedBox(
                            child: Text(
                              "Search resturant or food",
                              style: TextStyle(
                                color: Color(
                                  0xff929292,
                                ),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins",
                              ),
                            ),
                            width: 219,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 13,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      child:

                          /// Detected as Icon
                          /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                          Image.network(
                        "https://resource-hosting.s3.us-west-1.amazonaws.com/M9CjeXWi-[object Object]",
                        width: 24,
                        height: 24,
                        fit: BoxFit.cover,
                      ),
                      padding: EdgeInsets.all(
                        13,
                      ),
                      decoration: BoxDecoration(
                        color: Color(
                          0xffff4200,
                        ),
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                ),
              ),
              SizedBox(
                height: 13.8,
              ),
              Container(
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child:

                                  /// Detected as Icon
                                  /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                  Image.network(
                                "https://resource-hosting.s3.us-west-1.amazonaws.com/uYGXhxfb-[object Object]",
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              ),
                              padding: EdgeInsets.all(
                                18,
                              ),
                              decoration: BoxDecoration(
                                color: Color(
                                  0xfff8f8f8,
                                ),
                                borderRadius: BorderRadius.circular(
                                  40,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              child: Text(
                                "Add Story",
                                style: TextStyle(
                                  color: Color(
                                    0xff929292,
                                  ),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Poppins",
                                ),
                                textAlign: TextAlign.center,
                              ),
                              width: 70,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Container(
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: Color(
                                          0xffc4c4c4,
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: -3,
                                      child: Container(
                                        width: 60,
                                        height: 90,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              "https://resource-hosting.s3.us-west-1.amazonaws.com/LegFL259-[object Object]",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),

                                    /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                                    Container(),
                                  ],
                                ),
                                width: 60,
                                height: 60,
                              ),
                              padding: EdgeInsets.all(
                                3,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  40,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              child: Text(
                                "Ice World",
                                style: TextStyle(
                                  color: Color(
                                    0xff929292,
                                  ),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Poppins",
                                ),
                                textAlign: TextAlign.center,
                              ),
                              width: 70,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Container(
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: Color(
                                          0xffc4c4c4,
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                    ),

                                    /// wrap:positioned of "image 118"
                                    Positioned.fill(
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          width: 63.75,
                                          height: 96,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                "https://resource-hosting.s3.us-west-1.amazonaws.com/kUqKkNKU-[object Object]",
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                    /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                                    Container(),
                                  ],
                                ),
                                width: 60,
                                height: 60,
                              ),
                              padding: EdgeInsets.all(
                                3,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  40,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              child: Text(
                                "Maksuda",
                                style: TextStyle(
                                  color: Color(
                                    0xff929292,
                                  ),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Poppins",
                                ),
                                textAlign: TextAlign.center,
                              ),
                              width: 70,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Container(
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: Color(
                                          0xffc4c4c4,
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                    ),

                                    /// wrap:positioned of "image 119"
                                    Positioned.fill(
                                      child: Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                          width: 81.75,
                                          height: 101.79,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                "https://resource-hosting.s3.us-west-1.amazonaws.com/OFV2XwKN-[object Object]",
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                    /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                                    Container(),
                                  ],
                                ),
                                width: 60,
                                height: 60,
                              ),
                              padding: EdgeInsets.all(
                                3,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  40,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              child: Text(
                                "Sadia",
                                style: TextStyle(
                                  color: Color(
                                    0xff929292,
                                  ),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Poppins",
                                ),
                                textAlign: TextAlign.center,
                              ),
                              width: 70,
                            ),
                          ],
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                  ),
                ),
                height: 89,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    5,
                  ),
                ),
              ),
              SizedBox(
                height: 13.8,
              ),
              Container(
                child: SizedBox(
                  child: Text(
                    "On Discount",
                    style: TextStyle(
                      color: Color(
                        0xff202020,
                      ),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                    ),
                  ),
                  width: 279,
                ),
              ),
              SizedBox(
                height: 13.8,
              ),
              Container(
                child: Container(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Stack(
                            children: [
                              Container(
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 300,
                                      height: 170.15,
                                      decoration: BoxDecoration(
                                        color: Color(
                                          0xffc4c4c4,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          4.477612018585205,
                                        ),
                                      ),
                                    ),

                                    /// wrap:positioned of "image 125"
                                    Positioned.fill(
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          width: 307.38,
                                          height: 204.18,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                "https://resource-hosting.s3.us-west-1.amazonaws.com/zSg3QCSZ-[object Object]",
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                    /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                                    Container(),
                                  ],
                                ),
                                width: 300,
                                height: 170.15,
                              ),

                              /// wrap:positioned of "Frame 774"
                              Positioned.fill(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            "Buy 1 Get 1",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                              fontFamily: "Poppins",
                                            ),
                                          ),
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 20,
                                            vertical: 5,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Color(
                                              0xffff4200,
                                            ),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(
                                                0,
                                              ),
                                              topRight: Radius.circular(
                                                20,
                                              ),
                                              bottomLeft: Radius.circular(
                                                0,
                                              ),
                                              bottomRight: Radius.circular(
                                                20,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          child: Text(
                                            "Open",
                                            style: TextStyle(
                                              color: Color(
                                                0xfff8f8f8,
                                              ),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                              fontFamily: "Poppins",
                                            ),
                                          ),
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 20,
                                            vertical: 5,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Color(
                                              0x3f202020,
                                            ),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(
                                                0,
                                              ),
                                              topRight: Radius.circular(
                                                20,
                                              ),
                                              bottomLeft: Radius.circular(
                                                0,
                                              ),
                                              bottomRight: Radius.circular(
                                                20,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                              Container(),
                            ],
                          ),
                          width: 300,
                          height: 170.15,
                        ),
                        SizedBox(
                          height: 5,
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
                                        "Pizza Burg",
                                        style: TextStyle(
                                          color: Color(
                                            0xff202020,
                                          ),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Poppins",
                                        ),
                                      ),
                                      width: 243,
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          /// Detected as Icon
                                          /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                          Image.network(
                                            "https://resource-hosting.s3.us-west-1.amazonaws.com/h-hA6_3Q-[object Object]",
                                            width: 13,
                                            height: 13,
                                            fit: BoxFit.cover,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "3.5",
                                            style: TextStyle(
                                              color: Color(
                                                0xff202020,
                                              ),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                              fontFamily: "Poppins",
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "(2)",
                                            style: TextStyle(
                                              color: Color(
                                                0xff646464,
                                              ),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                              fontFamily: "Poppins",
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                      ),
                                    ),
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          /// Detected as Icon
                                          /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                          Image.network(
                                            "https://resource-hosting.s3.us-west-1.amazonaws.com/rIVPqbzR-[object Object]",
                                            width: 13,
                                            height: 13,
                                            fit: BoxFit.cover,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "Delivery",
                                            style: TextStyle(
                                              color: Color(
                                                0xff202020,
                                              ),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                              fontFamily: "Poppins",
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "12 tk",
                                            style: TextStyle(
                                              color: Color(
                                                0xffff4200,
                                              ),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                              fontFamily: "Poppins",
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 0.5,
                                      height: 10,
                                      decoration: BoxDecoration(
                                        color: Color(
                                          0xffc4c4c4,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Pizza & Burgers",
                                      style: TextStyle(
                                        color: Color(
                                          0xff202020,
                                        ),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: "Poppins",
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                height: 217,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    5,
                  ),
                ),
              ),
              SizedBox(
                height: 13.8,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: SizedBox(
                        child: Text(
                          "Nearby Resturant",
                          style: TextStyle(
                            color: Color(
                              0xff202020,
                            ),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                          ),
                        ),
                        width: 279,
                      ),
                    ),
                    SizedBox(
                      height: 5,
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
                                Container(
                                  child: Stack(
                                    children: [
                                      Container(
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: 335,
                                              height: 190,
                                              decoration: BoxDecoration(
                                                color: Color(
                                                  0xffc4c4c4,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  5,
                                                ),
                                              ),
                                            ),

                                            /// wrap:positioned of "image 123"
                                            Positioned.fill(
                                              child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                  width: 373.5,
                                                  height: 249,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: NetworkImage(
                                                        "https://resource-hosting.s3.us-west-1.amazonaws.com/MKUeyVpq-[object Object]",
                                                      ),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                                            Container(),
                                          ],
                                        ),
                                        width: 335,
                                        height: 190,
                                      ),

                                      /// wrap:positioned of "Frame 778"
                                      Positioned.fill(
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            child: Container(
                                              child: Text(
                                                "Closed",
                                                style: TextStyle(
                                                  color: Color(
                                                    0xfff8f8f8,
                                                  ),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w300,
                                                  fontFamily: "Poppins",
                                                ),
                                              ),
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 20,
                                                vertical: 5,
                                              ),
                                              decoration: BoxDecoration(
                                                color: Color(
                                                  0x3f202020,
                                                ),
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(
                                                    0,
                                                  ),
                                                  topRight: Radius.circular(
                                                    20,
                                                  ),
                                                  bottomLeft: Radius.circular(
                                                    0,
                                                  ),
                                                  bottomRight: Radius.circular(
                                                    20,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                      /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                                      Container(),
                                    ],
                                  ),
                                  width: 335,
                                  height: 190,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              child: Text(
                                                "Testy Treat",
                                                style: TextStyle(
                                                  color: Color(
                                                    0xff202020,
                                                  ),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: "Poppins",
                                                ),
                                              ),
                                              width: 278,
                                            ),
                                            Container(
                                              child: Row(
                                                children: [
                                                  /// Detected as Icon
                                                  /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                                  Image.network(
                                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/xNU1khSU-[object Object]",
                                                    width: 13,
                                                    height: 13,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "3.5",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xff202020,
                                                      ),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: "Poppins",
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "(2)",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xff646464,
                                                      ),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: "Poppins",
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ],
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                              ),
                                            ),
                                          ],
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Row(
                                                children: [
                                                  /// Detected as Icon
                                                  /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                                  Image.network(
                                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/cQV_gH4_-[object Object]",
                                                    width: 13,
                                                    height: 13,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "Delivery",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xff202020,
                                                      ),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: "Poppins",
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "12 tk",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xffff4200,
                                                      ),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: "Poppins",
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ],
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              width: 0.5,
                                              height: 10,
                                              decoration: BoxDecoration(
                                                color: Color(
                                                  0xffc4c4c4,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "Cikken & Frech fry",
                                              style: TextStyle(
                                                color: Color(
                                                  0xff202020,
                                                ),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300,
                                                fontFamily: "Poppins",
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Stack(
                                    children: [
                                      Container(
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: 335,
                                              height: 190,
                                              decoration: BoxDecoration(
                                                color: Color(
                                                  0xffc4c4c4,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  5,
                                                ),
                                              ),
                                            ),

                                            /// wrap:positioned of "image 116"
                                            Positioned.fill(
                                              child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                  width: 349,
                                                  height: 465,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: NetworkImage(
                                                        "https://resource-hosting.s3.us-west-1.amazonaws.com/m6KTvDaO-[object Object]",
                                                      ),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                                            Container(),
                                          ],
                                        ),
                                        width: 335,
                                      ),

                                      /// wrap:positioned of "Frame 776"
                                      Positioned.fill(
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            child: Container(
                                              child: Text(
                                                "Open",
                                                style: TextStyle(
                                                  color: Color(
                                                    0xfff8f8f8,
                                                  ),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w300,
                                                  fontFamily: "Poppins",
                                                ),
                                              ),
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 20,
                                                vertical: 5,
                                              ),
                                              decoration: BoxDecoration(
                                                color: Color(
                                                  0x3f202020,
                                                ),
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(
                                                    0,
                                                  ),
                                                  topRight: Radius.circular(
                                                    20,
                                                  ),
                                                  bottomLeft: Radius.circular(
                                                    0,
                                                  ),
                                                  bottomRight: Radius.circular(
                                                    20,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                      /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                                      Container(),
                                    ],
                                  ),
                                  width: 335,
                                  height: 190,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              child: Text(
                                                "Sultan’s Dine",
                                                style: TextStyle(
                                                  color: Color(
                                                    0xff202020,
                                                  ),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: "Poppins",
                                                ),
                                              ),
                                              width: 278,
                                            ),
                                            Container(
                                              child: Row(
                                                children: [
                                                  /// Detected as Icon
                                                  /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                                  Image.network(
                                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/3ILp2lWh-[object Object]",
                                                    width: 13,
                                                    height: 13,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "3.5",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xff202020,
                                                      ),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: "Poppins",
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "(2)",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xff646464,
                                                      ),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: "Poppins",
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ],
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                              ),
                                            ),
                                          ],
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Row(
                                                children: [
                                                  /// Detected as Icon
                                                  /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                                  Image.network(
                                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/8AIAFoaU-[object Object]",
                                                    width: 13,
                                                    height: 13,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "Delivery",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xff202020,
                                                      ),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: "Poppins",
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "12 tk",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xffff4200,
                                                      ),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: "Poppins",
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ],
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              width: 0.5,
                                              height: 10,
                                              decoration: BoxDecoration(
                                                color: Color(
                                                  0xffc4c4c4,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "Fruits",
                                              style: TextStyle(
                                                color: Color(
                                                  0xff202020,
                                                ),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300,
                                                fontFamily: "Poppins",
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Stack(
                                    children: [
                                      Container(
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: 335,
                                              height: 190,
                                              decoration: BoxDecoration(
                                                color: Color(
                                                  0xffc4c4c4,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  5,
                                                ),
                                              ),
                                            ),

                                            /// wrap:positioned of "image 125"
                                            Positioned.fill(
                                              child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                  width: 343.24,
                                                  height: 228,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: NetworkImage(
                                                        "https://resource-hosting.s3.us-west-1.amazonaws.com/T8e6N8eY-[object Object]",
                                                      ),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                                            Container(),
                                          ],
                                        ),
                                        width: 335,
                                        height: 190,
                                      ),

                                      /// wrap:positioned of "Frame 777"
                                      Positioned.fill(
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: Text(
                                                    "Buy 1 Get 1",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 20,
                                                    vertical: 5,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Color(
                                                      0xffff4200,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft: Radius.circular(
                                                        0,
                                                      ),
                                                      topRight: Radius.circular(
                                                        20,
                                                      ),
                                                      bottomLeft:
                                                          Radius.circular(
                                                        0,
                                                      ),
                                                      bottomRight:
                                                          Radius.circular(
                                                        20,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Container(
                                                  child: Text(
                                                    "Open",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xfff8f8f8,
                                                      ),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 20,
                                                    vertical: 5,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Color(
                                                      0x3f202020,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft: Radius.circular(
                                                        0,
                                                      ),
                                                      topRight: Radius.circular(
                                                        20,
                                                      ),
                                                      bottomLeft:
                                                          Radius.circular(
                                                        0,
                                                      ),
                                                      bottomRight:
                                                          Radius.circular(
                                                        20,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),

                                      /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                                      Container(),
                                    ],
                                  ),
                                  width: 335,
                                  height: 190,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              child: Text(
                                                "Pizza Burg",
                                                style: TextStyle(
                                                  color: Color(
                                                    0xff202020,
                                                  ),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: "Poppins",
                                                ),
                                              ),
                                              width: 278,
                                            ),
                                            Container(
                                              child: Row(
                                                children: [
                                                  /// Detected as Icon
                                                  /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                                  Image.network(
                                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/34lXT498-[object Object]",
                                                    width: 13,
                                                    height: 13,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "3.5",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xff202020,
                                                      ),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: "Poppins",
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "(2)",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xff646464,
                                                      ),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: "Poppins",
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ],
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                              ),
                                            ),
                                          ],
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Row(
                                                children: [
                                                  /// Detected as Icon
                                                  /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                                  Image.network(
                                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/PdzqjHJ8-[object Object]",
                                                    width: 13,
                                                    height: 13,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "Delivery",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xff202020,
                                                      ),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: "Poppins",
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "12 tk",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xffff4200,
                                                      ),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: "Poppins",
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ],
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              width: 0.5,
                                              height: 10,
                                              decoration: BoxDecoration(
                                                color: Color(
                                                  0xffc4c4c4,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "Pizza & Burgers",
                                              style: TextStyle(
                                                color: Color(
                                                  0xff202020,
                                                ),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300,
                                                fontFamily: "Poppins",
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Stack(
                                    children: [
                                      Container(
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              top: 0,
                                              child: Container(
                                                width: 335,
                                                height: 190,
                                                decoration: BoxDecoration(
                                                  color: Color(
                                                    0xffc4c4c4,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    5,
                                                  ),
                                                ),
                                              ),
                                            ),

                                            /// wrap:positioned of "image 122"
                                            Positioned.fill(
                                              child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                  width: 376.5,
                                                  height: 251,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: NetworkImage(
                                                        "https://resource-hosting.s3.us-west-1.amazonaws.com/eeCmiFE2-[object Object]",
                                                      ),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                                            Container(),
                                          ],
                                        ),
                                        width: 335,
                                        height: 189,
                                      ),

                                      /// wrap:positioned of "Frame 774"
                                      Positioned.fill(
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: Text(
                                                    "12% off",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 20,
                                                    vertical: 5,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Color(
                                                      0xffff4200,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft: Radius.circular(
                                                        0,
                                                      ),
                                                      topRight: Radius.circular(
                                                        20,
                                                      ),
                                                      bottomLeft:
                                                          Radius.circular(
                                                        0,
                                                      ),
                                                      bottomRight:
                                                          Radius.circular(
                                                        20,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Container(
                                                  child: Text(
                                                    "Open",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xfff8f8f8,
                                                      ),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 20,
                                                    vertical: 5,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Color(
                                                      0x3f202020,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft: Radius.circular(
                                                        0,
                                                      ),
                                                      topRight: Radius.circular(
                                                        20,
                                                      ),
                                                      bottomLeft:
                                                          Radius.circular(
                                                        0,
                                                      ),
                                                      bottomRight:
                                                          Radius.circular(
                                                        20,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),

                                      /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                                      Container(),
                                    ],
                                  ),
                                  width: 335,
                                  height: 189,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              child: Text(
                                                "Chezz",
                                                style: TextStyle(
                                                  color: Color(
                                                    0xff202020,
                                                  ),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: "Poppins",
                                                ),
                                              ),
                                              width: 278,
                                            ),
                                            Container(
                                              child: Row(
                                                children: [
                                                  /// Detected as Icon
                                                  /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                                  Image.network(
                                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/kuOIQcQE-[object Object]",
                                                    width: 13,
                                                    height: 13,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "3.5",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xff202020,
                                                      ),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: "Poppins",
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "(2)",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xff646464,
                                                      ),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: "Poppins",
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ],
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                              ),
                                            ),
                                          ],
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Row(
                                                children: [
                                                  /// Detected as Icon
                                                  /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                                  Image.network(
                                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/PL7PZntm-[object Object]",
                                                    width: 13,
                                                    height: 13,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "Delivery",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xff202020,
                                                      ),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: "Poppins",
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "12 tk",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xffff4200,
                                                      ),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: "Poppins",
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ],
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              width: 0.5,
                                              height: 10,
                                              decoration: BoxDecoration(
                                                color: Color(
                                                  0xffc4c4c4,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "PIzaa",
                                              style: TextStyle(
                                                color: Color(
                                                  0xff202020,
                                                ),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300,
                                                fontFamily: "Poppins",
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
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
                    ),
                  ],
                ),
                padding: EdgeInsets.only(
                  bottom: 100,
                ),
              ),
            ],
          ),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              30,
            ),
          ),
        ),
      ),
    );

  }
}