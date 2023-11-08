import 'package:fantasyf1/core/app_export.dart';
import 'package:flutter/material.dart';

class CircuitoDeAlbertParkScreen extends StatelessWidget {
  const CircuitoDeAlbertParkScreen({Key? key})
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
                    padding: EdgeInsets.only(bottom: 53.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 363.v,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Opacity(
                                opacity: 0.6,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgEllipse2,
                                  height: 363.v,
                                  width: 360.h,
                                  alignment: Alignment.center,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 32.h,
                                    top: 7.v,
                                    right: 40.h,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        width: 232.h,
                                        margin: EdgeInsets.only(
                                          left: 30.h,
                                          right: 25.h,
                                        ),
                                        child: Text(
                                          "msg_circuito_de_albert".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.displaySmall,
                                        ),
                                      ),
                                      SizedBox(height: 13.v),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgImage31,
                                        height: 216.v,
                                        width: 288.h,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 253.h,
                          margin: EdgeInsets.only(
                            left: 24.h,
                            top: 58.v,
                            right: 82.h,
                          ),
                          child: Text(
                            "msg_trazado_circuito2".tr,
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles
                                .bodyMediumJacquesFrancoisPrimary,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 28.h,
                              top: 9.v,
                              right: 8.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgArrowleft,
                                  height: 33.adaptSize,
                                  width: 33.adaptSize,
                                  margin: EdgeInsets.only(top: 131.v),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage30164x176,
                                  height: 164.v,
                                  width: 176.h,
                                ),
                              ],
                            ),
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
