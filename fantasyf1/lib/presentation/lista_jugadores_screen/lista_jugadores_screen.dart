import 'package:fantasyf1/core/app_export.dart';import 'package:fantasyf1/widgets/app_bar/appbar_image.dart';import 'package:fantasyf1/widgets/app_bar/appbar_image_1.dart';import 'package:fantasyf1/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;class ListaJugadoresScreen extends StatelessWidget {const ListaJugadoresScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: CustomAppBar(leadingWidth: 47.h, leading: AppbarImage(svgPath: ImageConstant.imgClose, margin: EdgeInsets.only(left: 31.h, top: 13.v, bottom: 27.v), onTap: () {onTapCloseone(context);}), centerTitle: true, title: AppbarImage1(imagePath: ImageConstant.imgLogo)), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(bottom: 5.v), child: Column(children: [Divider(color: theme.colorScheme.primary.withOpacity(1)), SizedBox(height: 16.v), Text("lbl_clasificaci_n".tr, style: CustomTextStyles.displayMedium40), SizedBox(height: 19.v), GestureDetector(onTap: () {onTapUserlistitem(context);}, child: Container(height: 71.v, width: 328.h, padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 2.v), decoration: AppDecoration.fillWhiteA, child: Stack(alignment: Alignment.bottomLeft, children: [Align(alignment: Alignment.center, child: Container(width: 273.h, margin: EdgeInsets.only(left: 20.h, top: 1.v, right: 14.h), padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 14.v), decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgVector1), fit: BoxFit.cover)), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [Padding(padding: EdgeInsets.symmetric(vertical: 6.v), child: Text("lbl".tr, style: theme.textTheme.titleLarge)), Padding(padding: EdgeInsets.only(left: 97.h, top: 3.v), child: Text("lbl".tr, style: CustomTextStyles.headlineMediumMedium))]))), CustomImageView(imagePath: ImageConstant.imgDownload1, height: 51.v, width: 55.h, radius: BorderRadius.circular(25.h), alignment: Alignment.bottomLeft, margin: EdgeInsets.only(bottom: 6.v))])))])))))); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapCloseone(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the perfilCarrerasScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the perfilCarrerasScreen.
onTapUserlistitem(BuildContext context) { Navigator.pushNamed(context, AppRoutes.perfilCarrerasScreen); } 
 }
