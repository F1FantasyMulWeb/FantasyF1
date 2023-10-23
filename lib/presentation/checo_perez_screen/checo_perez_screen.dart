import 'package:fantasyf1/core/app_export.dart';import 'package:flutter/material.dart';class ChecoPerezScreen extends StatelessWidget {const ChecoPerezScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 59.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(bottom: 50.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 587.v, width: double.maxFinite, child: Stack(alignment: Alignment.bottomLeft, children: [Align(alignment: Alignment.topCenter, child: Container(padding: EdgeInsets.symmetric(horizontal: 38.h, vertical: 15.v), decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.imgGroup6), fit: BoxFit.cover)), child: Column(mainAxisSize: MainAxisSize.min, children: [Text("lbl_sergio_perez".tr, style: CustomTextStyles.displaySmallWhiteA70001), SizedBox(height: 42.v), CustomImageView(imagePath: ImageConstant.imgImage28, height: 29.v, width: 57.h, alignment: Alignment.centerRight), SizedBox(height: 42.v)]))), Align(alignment: Alignment.bottomLeft, child: Container(width: 215.h, margin: EdgeInsets.only(left: 35.h), child: Text("msg_team_red_bull".tr, maxLines: 9, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumJacquesFrancoisPrimary))), CustomImageView(imagePath: ImageConstant.imgCheco, height: 362.v, width: 358.h, alignment: Alignment.topCenter, margin: EdgeInsets.only(top: 57.v))])), CustomImageView(svgPath: ImageConstant.imgArrowup, height: 20.adaptSize, width: 20.adaptSize, alignment: Alignment.centerRight, margin: EdgeInsets.only(top: 12.v, right: 57.h), onTap: () {onTapImgArrowupone(context);}), Padding(padding: EdgeInsets.only(left: 28.h, top: 5.v, right: 45.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(svgPath: ImageConstant.imgArrowleft, height: 33.adaptSize, width: 33.adaptSize, margin: EdgeInsets.only(top: 36.v, bottom: 3.v), onTap: () {onTapImgArrowleftone(context);}), Column(children: [CustomImageView(imagePath: ImageConstant.imgImage5, height: 45.adaptSize, width: 45.adaptSize, radius: BorderRadius.circular(22.h)), SizedBox(height: 7.v), CustomImageView(svgPath: ImageConstant.imgArrowdown, height: 20.adaptSize, width: 20.adaptSize, onTap: () {onTapImgArrowdownone(context);})])]))]))))])))); } 
/// Navigates to the pilotoVerstapenScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the pilotoVerstapenScreen.
onTapImgArrowupone(BuildContext context) { Navigator.pushNamed(context, AppRoutes.pilotoVerstapenScreen); } 
/// Navigates to the listaPilotosScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the listaPilotosScreen.
onTapImgArrowleftone(BuildContext context) { Navigator.pushNamed(context, AppRoutes.listaPilotosScreen); } 
/// Navigates to the elNanoScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the elNanoScreen.
onTapImgArrowdownone(BuildContext context) { Navigator.pushNamed(context, AppRoutes.elNanoScreen); } 
 }
