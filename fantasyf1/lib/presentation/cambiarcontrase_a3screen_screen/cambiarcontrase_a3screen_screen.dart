import 'package:fantasyf1/core/app_export.dart';import 'package:fantasyf1/widgets/app_bar/appbar_image.dart';import 'package:fantasyf1/widgets/app_bar/appbar_image_3.dart';import 'package:fantasyf1/widgets/app_bar/custom_app_bar.dart';import 'package:fantasyf1/widgets/custom_elevated_button.dart';import 'package:fantasyf1/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class CambiarcontraseA3screenScreen extends StatelessWidget {CambiarcontraseA3screenScreen({Key? key}) : super(key: key);

TextEditingController passwordController = TextEditingController();

TextEditingController passwordController1 = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 39.v), SizedBox(height: 232.v, width: 320.h, child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.symmetric(horizontal: 8.h), child: Column(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgLogo, height: 64.v, width: 280.h), SizedBox(height: 16.v), SizedBox(width: 303.h, child: Text("msg_formula_1_fantasy".tr, maxLines: 3, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.displayLarge))]))), CustomAppBar(height: 40.v, leadingWidth: 60.h, leading: AppbarImage(svgPath: ImageConstant.imgArrowleftPrimary, margin: EdgeInsets.only(left: 20.h), onTap: () {onTapArrowleftone(context);}), actions: [AppbarImage3(svgPath: ImageConstant.imgHome, margin: EdgeInsets.fromLTRB(20.h, 8.v, 20.h, 7.v))])])), SizedBox(height: 42.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 5.v), child: Column(children: [Container(margin: EdgeInsets.symmetric(horizontal: 9.h), decoration: AppDecoration.outlinePrimary3, child: Column(children: [Text("msg_recupera_tu_cuenta".tr, style: CustomTextStyles.headlineMediumInter), SizedBox(height: 11.v), SizedBox(width: 216.h, child: Text("msg_introduce_la_nueva".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleSmall15))])), SizedBox(height: 9.v), Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_contrase_a".tr, style: CustomTextStyles.titleSmallOnErrorContainer), SizedBox(height: 7.v), CustomTextFormField(controller: passwordController, hintText: "lbl2".tr, textInputType: TextInputType.visiblePassword, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 14.v, 8.h, 14.v), child: CustomImageView(svgPath: ImageConstant.imgMingcutelockline)), prefixConstraints: BoxConstraints(maxHeight: 48.v), obscureText: true)]), SizedBox(height: 14.v), Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_repetir_contrase_a".tr, style: CustomTextStyles.titleSmallOnErrorContainer), SizedBox(height: 6.v), CustomTextFormField(controller: passwordController1, hintText: "lbl2".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, prefix: Container(margin: EdgeInsets.fromLTRB(16.h, 14.v, 8.h, 14.v), child: CustomImageView(svgPath: ImageConstant.imgMingcutelockline)), prefixConstraints: BoxConstraints(maxHeight: 48.v), obscureText: true)]), CustomElevatedButton(text: "msg_cambiar_contrase_a2".tr, margin: EdgeInsets.only(left: 10.h, top: 24.v, right: 8.h), onTap: () {onTapCambiar(context);})]))))]))))); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowleftone(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the loginscreenScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [Navigator] widget
/// to push the named route for the loginscreenScreen.
onTapCambiar(BuildContext context) { Navigator.pushNamed(context, AppRoutes.loginscreenScreen); } 
 }
