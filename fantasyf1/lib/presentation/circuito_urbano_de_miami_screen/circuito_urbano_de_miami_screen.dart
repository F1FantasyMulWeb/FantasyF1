import 'package:fantasyf1/core/app_export.dart';
import 'package:flutter/material.dart';

class CircuitoUrbanoDeMiamiScreen extends StatelessWidget {
  const CircuitoUrbanoDeMiamiScreen({Key? key})
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
                                  imagePath: ImageConstant.imgEllipse21,
                                  height: 363.v,
                                  width: 360.h,
                                  alignment: Alignment.center,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 7.v,
                                    right: 1.h,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        width: 313.h,
                                        margin: EdgeInsets.only(
                                          left: 22.h,
                                          right: 23.h,
                                        ),
                                        child: Text(
                                          "msg_circuito_urbano".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.displaySmall,
                                        ),
                                      ),
                                      SizedBox(height: 19.v),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgImage34203x359,
                                        height: 203.v,
                                        width: 359.h,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 245.h,
                          margin: EdgeInsets.only(
                            left: 24.h,
                            top: 58.v,
                          ),
                          child: Text(
                            "msg_trazado_circuito3".tr,
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles
                                .bodyMediumJacquesFrancoisPrimary,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 28.h,
                              top: 8.v,
                              right: 31.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgArrowleft,
                                  height: 33.adaptSize,
                                  width: 33.adaptSize,
                                  margin: EdgeInsets.only(top: 129.v),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage35,
                                  height: 149.v,
                                  width: 160.h,
                                  margin: EdgeInsets.only(bottom: 13.v),
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
