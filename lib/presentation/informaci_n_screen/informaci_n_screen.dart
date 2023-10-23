import 'package:fantasyf1/core/app_export.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_image.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_image_1.dart';
import 'package:fantasyf1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class InformaciNScreen extends StatelessWidget {
  const InformaciNScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leadingWidth: 64.h,
          leading: AppbarImage(
            svgPath: ImageConstant.imgMenu,
            margin: EdgeInsets.only(
              left: 31.h,
              top: 11.v,
              bottom: 12.v,
            ),
          ),
          centerTitle: true,
          title: AppbarImage1(
            imagePath: ImageConstant.imgLogo,
          ),
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Container(
              height: 636.v,
              width: double.maxFinite,
              margin: EdgeInsets.only(bottom: 5.v),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 295.h,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_c_mo_se_juega".tr,
                              style: CustomTextStyles.displaySmallInter,
                            ),
                            TextSpan(
                              text: "\n\n".tr,
                              style: CustomTextStyles.displaySmallInter,
                            ),
                            TextSpan(
                              text: "msg_al_inicio_de_la".tr,
                              style: CustomTextStyles.titleSmall_1.copyWith(
                                height: 1.71,
                              ),
                            ),
                            TextSpan(
                              text: "lbl_pilotos2".tr,
                              style: CustomTextStyles.titleSmall_1,
                            ),
                            TextSpan(
                              text: "msg_deseados_antes_del".tr,
                              style: CustomTextStyles.titleSmall_1,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      width: double.maxFinite,
                      child: Divider(
                        color: theme.colorScheme.primary.withOpacity(1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
