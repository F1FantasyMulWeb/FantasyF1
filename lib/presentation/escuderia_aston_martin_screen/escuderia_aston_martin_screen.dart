import 'package:fantasyf1/core/app_export.dart';import 'package:flutter/material.dart';class EscuderiaAstonMartinScreen extends StatelessWidget {const EscuderiaAstonMartinScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 59.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(bottom: 50.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 11.v), decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.imgGroup50), fit: BoxFit.cover)), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 29.h), child: Text("lbl_aston_martin".tr, style: CustomTextStyles.displaySmallWhiteA70001)), Container(height: 186.v, width: 339.h, margin: EdgeInsets.only(left: 1.h, top: 36.v, bottom: 73.v), child: Stack(alignment: Alignment.centerLeft, children: [CustomImageView(imagePath: ImageConstant.imgImage6, height: 169.v, width: 338.h, alignment: Alignment.topCenter, margin: EdgeInsets.only(top: 5.v)), Align(alignment: Alignment.centerLeft, child: SizedBox(height: 186.v, child: VerticalDivider(width: 3.h, thickness: 3.v, color: appTheme.teal800))), Align(alignment: Alignment.centerRight, child: SizedBox(height: 186.v, child: VerticalDivider(width: 3.h, thickness: 3.v, color: appTheme.teal800)))]))])), Container(height: 293.v, width: 288.h, margin: EdgeInsets.only(left: 28.h, top: 40.v), child: Stack(alignment: Alignment.bottomRight, children: [Align(alignment: Alignment.topLeft, child: Container(width: 253.h, margin: EdgeInsets.only(left: 7.h), child: Text("msg_full_team_nameoracle".tr, maxLines: 12, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumJacquesFrancoisPrimary))), CustomImageView(imagePath: ImageConstant.imgIconmaxverst2, height: 45.adaptSize, width: 45.adaptSize, radius: BorderRadius.circular(22.h), alignment: Alignment.bottomRight, margin: EdgeInsets.only(bottom: 27.v)), CustomImageView(svgPath: ImageConstant.imgArrowdown, height: 20.adaptSize, width: 20.adaptSize, alignment: Alignment.bottomRight, margin: EdgeInsets.only(right: 13.h), onTap: () {onTapImgArrowdownone(context);}), CustomImageView(svgPath: ImageConstant.imgArrowup, height: 20.adaptSize, width: 20.adaptSize, alignment: Alignment.bottomRight, margin: EdgeInsets.only(right: 13.h, bottom: 77.v), onTap: () {onTapImgArrowupone(context);}), CustomImageView(svgPath: ImageConstant.imgArrowleft, height: 33.adaptSize, width: 33.adaptSize, alignment: Alignment.bottomLeft, margin: EdgeInsets.only(bottom: 3.v), onTap: () {onTapImgArrowleftone(context);})]))]))))])))); } 
/// Navigates to the escuderiaMercedesScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the escuderiaMercedesScreen.
onTapImgArrowdownone(BuildContext context) { Navigator.pushNamed(context, AppRoutes.escuderiaMercedesScreen); } 
/// Navigates to the escuderiaRedBullScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the escuderiaRedBullScreen.
onTapImgArrowupone(BuildContext context) { Navigator.pushNamed(context, AppRoutes.escuderiaRedBullScreen); } 
/// Navigates to the listaEscuderAsScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the listaEscuderAsScreen.
onTapImgArrowleftone(BuildContext context) { Navigator.pushNamed(context, AppRoutes.listaEscuderAsScreen); } 
 }
