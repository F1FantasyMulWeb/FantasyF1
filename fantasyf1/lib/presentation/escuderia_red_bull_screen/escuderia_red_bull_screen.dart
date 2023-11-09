import 'package:fantasyf1/core/app_export.dart';import 'package:flutter/material.dart';class EscuderiaRedBullScreen extends StatelessWidget {const EscuderiaRedBullScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 59.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(bottom: 50.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 14.v), decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.imgGroup6), fit: BoxFit.cover)), child: Column(children: [Text("lbl_red_bull_racing".tr, style: CustomTextStyles.displaySmallWhiteA70001), SizedBox(height: 45.v), CustomImageView(imagePath: ImageConstant.imgImagen20230928115059716, height: 190.v, width: 314.h), SizedBox(height: 54.v)])), Container(height: 293.v, width: 288.h, margin: EdgeInsets.only(left: 28.h, top: 40.v), child: Stack(alignment: Alignment.bottomRight, children: [Align(alignment: Alignment.topLeft, child: Container(width: 253.h, margin: EdgeInsets.only(left: 7.h), child: Text("msg_full_team_nameoracle".tr, maxLines: 12, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumJacquesFrancoisPrimary))), CustomImageView(imagePath: ImageConstant.imgIconmaxverst45x45, height: 45.adaptSize, width: 45.adaptSize, radius: BorderRadius.circular(22.h), alignment: Alignment.bottomRight, margin: EdgeInsets.only(bottom: 27.v)), CustomImageView(svgPath: ImageConstant.imgArrowdown, height: 20.adaptSize, width: 20.adaptSize, alignment: Alignment.bottomRight, margin: EdgeInsets.only(right: 13.h), onTap: () {onTapImgArrowdownone(context);}), CustomImageView(svgPath: ImageConstant.imgArrowleft, height: 33.adaptSize, width: 33.adaptSize, alignment: Alignment.bottomLeft, margin: EdgeInsets.only(bottom: 3.v), onTap: () {onTapImgArrowleftone(context);})]))]))))])))); } 
/// Navigates to the escuderiaAstonMartinScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the escuderiaAstonMartinScreen.
onTapImgArrowdownone(BuildContext context) { Navigator.pushNamed(context, AppRoutes.escuderiaAstonMartinScreen); } 
/// Navigates to the listaEscuderAsScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the listaEscuderAsScreen.
onTapImgArrowleftone(BuildContext context) { Navigator.pushNamed(context, AppRoutes.listaEscuderAsScreen); } 
 }