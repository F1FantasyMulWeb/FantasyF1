import '../grupo_screen/widgets/clasificacionro_item_widget.dart';import 'package:fantasyf1/core/app_export.dart';import 'package:fantasyf1/widgets/app_bar/appbar_image.dart';import 'package:fantasyf1/widgets/app_bar/appbar_image_1.dart';import 'package:fantasyf1/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class GrupoScreen extends StatelessWidget {const GrupoScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: CustomAppBar(leadingWidth: 61.h, leading: AppbarImage(svgPath: ImageConstant.imgArrowleft, margin: EdgeInsets.only(left: 28.h, top: 12.v, bottom: 11.v), onTap: () {onTapArrowleftone(context);}), centerTitle: true, title: AppbarImage1(imagePath: ImageConstant.imgLogo)), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(bottom: 5.v), child: Column(children: [Divider(color: theme.colorScheme.primary.withOpacity(1)), SizedBox(height: 17.v), Align(alignment: Alignment.centerLeft, child: SizedBox(height: 74.v, width: 86.h, child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.topRight, child: Padding(padding: EdgeInsets.only(right: 6.h), child: Text("lbl".tr, style: theme.textTheme.displayMedium))), Align(alignment: Alignment.bottomCenter, child: Text("lbl_c_digo".tr, style: CustomTextStyles.bodyMediumInter))]))), Padding(padding: EdgeInsets.only(left: 30.h, top: 28.v, right: 30.h), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 38.v);}, itemCount: 2, itemBuilder: (context, index) {return ClasificacionroItemWidget(onTapClasificacionro: () {onTapClasificacionro(context);});})), Padding(padding: EdgeInsets.only(left: 30.h, top: 55.v, right: 30.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [GestureDetector(onTap: () {onTapStackmdicartout(context);}, child: Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.only(bottom: 1.v), shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.circleBorder24), child: Container(height: 123.v, width: 135.h, decoration: AppDecoration.outlinePrimary3.copyWith(borderRadius: BorderRadiusStyle.circleBorder24), child: Stack(alignment: Alignment.center, children: [CustomImageView(svgPath: ImageConstant.imgMdicartoutline, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.center), Align(alignment: Alignment.center, child: Container(padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 11.v), decoration: AppDecoration.fillRed.copyWith(borderRadius: BorderRadiusStyle.circleBorder24), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 1.h), child: Text("lbl_mercado".tr, style: CustomTextStyles.titleLargeInterWhiteA700)), CustomImageView(svgPath: ImageConstant.imgCart, height: 53.adaptSize, width: 53.adaptSize, margin: EdgeInsets.only(left: 23.h, top: 14.v, bottom: 5.v))])))])))), GestureDetector(onTap: () {onTapColumnajustes(context);}, child: Container(margin: EdgeInsets.only(left: 28.h, top: 5.v), padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 12.v), decoration: AppDecoration.outlinePrimary6.copyWith(borderRadius: BorderRadiusStyle.circleBorder24), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [Text("lbl_ajustes".tr, style: CustomTextStyles.titleLargeWhiteA700), SizedBox(height: 6.v), CustomImageView(svgPath: ImageConstant.imgSettingsWhiteA70001, height: 60.v, width: 59.h), SizedBox(height: 4.v)])))]))])))))); } 
/// Navigates to the listaJugadoresScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the listaJugadoresScreen.
onTapClasificacionro(BuildContext context) { Navigator.pushNamed(context, AppRoutes.listaJugadoresScreen); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowleftone(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the mercadoScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the mercadoScreen.
onTapStackmdicartout(BuildContext context) { Navigator.pushNamed(context, AppRoutes.mercadoScreen); } 
/// Navigates to the ajustesScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the ajustesScreen.
onTapColumnajustes(BuildContext context) { Navigator.pushNamed(context, AppRoutes.ajustesScreen); } 
 }
