import 'package:fantasyf1/core/app_export.dart';
import 'package:flutter/material.dart';

class CircuitoBahrInScreen extends StatelessWidget {
  const CircuitoBahrInScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 58.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 46.v),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 363.v,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgEllipse1,
                                height: 363.v,
                                width: 360.h,
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 8.v),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        ImageConstant.imgGroup49,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "lbl_bahr_in".tr,
                                        style: theme.textTheme.displaySmall,
                                      ),
                                      SizedBox(height: 10.v),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgImage26273x355,
                                        height: 273.v,
                                        width: 355.h,
                                      ),
                                      SizedBox(height: 18.v),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 52.v),
                        SizedBox(
                          height: 286.v,
                          width: 295.h,
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: 221.h,
                                  margin: EdgeInsets.only(left: 1.h),
                                  child: Text(
                                    "msg_circuito_de_sakhir_fundado".tr,
                                    maxLines: 6,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .bodyMediumJacquesFrancoisPrimary,
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage27,
                                height: 171.v,
                                width: 198.h,
                                alignment: Alignment.bottomRight,
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgArrowleft,
                                height: 33.adaptSize,
                                width: 33.adaptSize,
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(bottom: 7.v),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
