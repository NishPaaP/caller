import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



// class KApiUrls {
//   static const main_Url = "";
//
//
//   static const baseurl = "${main_Url}api/v1/";
//
//   static const baseurlV2 = "${main_Url}api/v2/";
//
//   static const baseurlV4 = "${main_Url}api/";
//
//   static const baseurlV3 = "${main_Url}third_party_org/api/v1/organizations/";
// }

class ApiError {
  static Map<String, String?> error = {};
}

class KConstColors {
  static const Color primaryColor = Color(0xff1e1e5c);
  static const Color buttonTextColor = Colors.white;


}

class Helper {
  static Widget spacer(Size size, double space) {
    return SizedBox(
      height: size.height * space,
    );
  }

  static const athTopPadding =
  EdgeInsets.symmetric(horizontal: 16, vertical: 40);

  static const authTopPaddingWithButton =
  EdgeInsets.symmetric(horizontal: 16, vertical: 40);
}

class KConstTextStyle {


}

