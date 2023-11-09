import 'package:fantasyf1/core/app_export.dart';import 'package:fantasyf1/widgets/app_bar/appbar_circleimage.dart';import 'package:fantasyf1/widgets/app_bar/appbar_image.dart';import 'package:fantasyf1/widgets/app_bar/appbar_image_1.dart';import 'package:fantasyf1/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class MainScreen extends StatelessWidget {const MainScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: CustomAppBar(leadingWidth: 64.h, leading: AppbarImage(svgPath: ImageConstant.imgMenu, margin: EdgeInsets.only(left: 31.h, top: 12.v, bottom: 11.v)), centerTitle: true, title: AppbarImage1(imagePath: ImageConstant.imgLogo), actions: [Container(margin: EdgeInsets.fromLTRB(25.h, 11.v, 25.h, 13.v), decoration: AppDecoration.fillWhiteA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: AppbarCircleimage(imagePath: ImageConstant.imgDownload31x33, onTap: () {onTapDownloadone(context);}))]), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(bottom: 5.v), child: Column(children: [Divider(color: theme.colorScheme.primary.withOpacity(1)), Container(margin: EdgeInsets.only(left: 6.h, top: 15.v, right: 5.h), padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 3.v), decoration: AppDecoration.outlinePrimary1.copyWith(borderRadius: BorderRadiusStyle.roundedBorder47), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 6.v), Text("lbl_ultima_carrera".tr, style: theme.textTheme.headlineMedium), SizedBox(height: 11.v), SizedBox(height: 120.v, width: 341.h, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgIconmaxverst, height: 48.adaptSize, width: 48.adaptSize, radius: BorderRadius.circular(24.h), alignment: Alignment.bottomCenter, margin: EdgeInsets.only(bottom: 4.v)), Align(alignment: Alignment.bottomRight, child: Padding(padding: EdgeInsets.only(right: 3.h, bottom: 17.v), child: Text("lbl_puntos_54".tr, style: theme.textTheme.titleLarge))), Align(alignment: Alignment.topCenter, child: GestureDetector(onTap: () {onTapRowyeda(context);}, child: Container(margin: EdgeInsets.only(left: 6.h, bottom: 54.v), padding: EdgeInsets.symmetric(horizontal: 50.h, vertical: 4.v), decoration: AppDecoration.outlinePrimary2.copyWith(borderRadius: BorderRadiusStyle.roundedBorder32), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgImage29, height: 51.v, width: 89.h, margin: EdgeInsets.only(top: 5.v)), Padding(padding: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 8.v), child: Text("lbl_yeda".tr, style: theme.textTheme.displaySmall))])))), CustomImageView(imagePath: ImageConstant.imgImage7, height: 56.v, width: 161.h, alignment: Alignment.bottomLeft)]))])), Padding(padding: EdgeInsets.only(left: 14.h, top: 81.v), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [GestureDetector(onTap: () {onTapAlonso(context);}, child: Container(padding: EdgeInsets.all(8.h), decoration: AppDecoration.fillTeal.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgElnanopapauntiburon, height: 48.adaptSize, width: 48.adaptSize, radius: BorderRadius.circular(24.h)), Padding(padding: EdgeInsets.only(left: 7.h, top: 8.v, bottom: 15.v), child: Text("lbl_alonso".tr, style: CustomTextStyles.titleLargeWhiteA70001))]), Padding(padding: EdgeInsets.only(left: 8.h, top: 30.v), child: Text("lbl_puntos_33".tr, style: CustomTextStyles.titleLargeWhiteA70001)), SizedBox(height: 10.v), CustomImageView(imagePath: ImageConstant.imgImage756x128, height: 56.v, width: 128.h, alignment: Alignment.center), SizedBox(height: 8.v)]))), GestureDetector(onTap: () {onTapCheco(context);}, child: Container(height: 193.v, width: 177.h, margin: EdgeInsets.only(left: 9.h), child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.center, child: Container(margin: EdgeInsets.symmetric(horizontal: 6.h), decoration: AppDecoration.outlinePrimary3, child: Container(width: 160.h, margin: EdgeInsets.only(left: 4.h), padding: EdgeInsets.all(8.h), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgChecoperez, height: 48.adaptSize, width: 48.adaptSize, radius: BorderRadius.circular(24.h)), Padding(padding: EdgeInsets.only(left: 16.h, top: 8.v, bottom: 15.v), child: Text("lbl_perez".tr, style: CustomTextStyles.titleLargeWhiteA70001))]), Padding(padding: EdgeInsets.only(left: 8.h, top: 30.v, bottom: 74.v), child: Text("lbl_puntos_23".tr, style: CustomTextStyles.titleLargeWhiteA70001))])))), CustomImageView(imagePath: ImageConstant.imgImage8, height: 63.v, width: 177.h, alignment: Alignment.bottomCenter, margin: EdgeInsets.only(bottom: 19.v))])))])), SizedBox(height: 54.v), Container(padding: EdgeInsets.symmetric(horizontal: 11.h), decoration: AppDecoration.fillBlueGray.copyWith(borderRadius: BorderRadiusStyle.customBorderTL47), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 7.v), Text("msg_siguiente_carrera".tr, style: theme.textTheme.titleLarge), SizedBox(height: 7.v), GestureDetector(onTap: () {onTapRowmelbourne(context);}, child: Container(padding: EdgeInsets.symmetric(horizontal: 20.h), decoration: AppDecoration.fillOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder32), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgImage31, height: 66.v, width: 88.h, margin: EdgeInsets.only(bottom: 5.v)), Padding(padding: EdgeInsets.only(top: 14.v, right: 4.h, bottom: 17.v), child: Text("lbl_melbourne".tr, style: theme.textTheme.headlineLarge))])))]))])))))); } 
/// Navigates to the avatarScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the avatarScreen.
onTapDownloadone(BuildContext context) { Navigator.pushNamed(context, AppRoutes.avatarScreen); } 
/// Navigates to the circuitoDeLaCornicheDeYedaScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the circuitoDeLaCornicheDeYedaScreen.
onTapRowyeda(BuildContext context) { Navigator.pushNamed(context, AppRoutes.circuitoDeLaCornicheDeYedaScreen); } 
/// Navigates to the elNanoScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the elNanoScreen.
onTapAlonso(BuildContext context) { Navigator.pushNamed(context, AppRoutes.elNanoScreen); } 
/// Navigates to the checoPerezScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the checoPerezScreen.
onTapCheco(BuildContext context) { Navigator.pushNamed(context, AppRoutes.checoPerezScreen); } 
/// Navigates to the circuitoDeAlbertParkScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the circuitoDeAlbertParkScreen.
onTapRowmelbourne(BuildContext context) { Navigator.pushNamed(context, AppRoutes.circuitoDeAlbertParkScreen); } 
 }