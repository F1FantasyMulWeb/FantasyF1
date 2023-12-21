import 'package:fantasyf1/core/app_export.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_image.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_title.dart';
import 'package:fantasyf1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
<<<<<<< Updated upstream

import '../mercado_screen/widgets/userprofile_item_widget.dart';
=======
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

>>>>>>> Stashed changes

class MercadoScreen extends StatelessWidget {
  const MercadoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
<<<<<<< Updated upstream
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: 130.v,
                leadingWidth: 36.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgClose,
                    margin: EdgeInsets.only(left: 20.h, bottom: 50.v),
                    onTap: () {
                      onTapCloseone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_mercado2".tr)),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Column(children: [
                  SizedBox(
                      width: 203.h,
                      child: Text("msg_dinero_disponible".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleLarge)),
                  Expanded(
                      child: Padding(
                          padding: EdgeInsets.only(left: 13.h, top: 7.v),
                          child: ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: 19.v);
                              },
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return UserprofileItemWidget();
                              })))
                ]))));
=======
    final groupModel = ref.watch(grupoActualModelProvider);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
            height: 130.v,
            leadingWidth: 36.h,
            leading: AppbarImage(
                svgPath: ImageConstant.imgClose,
                margin: EdgeInsets.only(left: 20.h, bottom: 50.v),
                onTap: () {
                  onTapCloseone(context);
                }),
            centerTitle: true,
            title: AppbarTitle(text: LocalizationExtension("lbl_mercado2").tr)),

      ),
    );
>>>>>>> Stashed changes
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapCloseone(BuildContext context) {
    Navigator.pop(context);
  }
}
