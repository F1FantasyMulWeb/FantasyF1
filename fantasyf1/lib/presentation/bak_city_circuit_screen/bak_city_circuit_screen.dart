import 'package:fantasyf1/core/app_export.dart';
import 'package:flutter/material.dart';

class BakCityCircuitScreen extends StatelessWidget {
  const BakCityCircuitScreen({Key? key})
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
                                  imagePath: ImageConstant.imgEllipse2363x360,
                                  height: 363.v,
                                  width: 360.h,
                                  alignment: Alignment.center,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 13.h,
                                    top: 8.v,
                                    right: 13.h,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "msg_bak_city_circuit".tr,
                                        style: theme.textTheme.displaySmall,
                                      ),
                                      SizedBox(height: 98.v),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgImage32,
                                        height: 113.v,
                                        width: 331.h,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 188.h,
                          margin: EdgeInsets.only(
                            left: 24.h,
                            top: 58.v,
                          ),
                          child: Text(
                            "msg_trazado_bak_city".tr,
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
                              top: 18.v,
                              right: 28.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgArrowleft,
                                  height: 33.adaptSize,
                                  width: 33.adaptSize,
                                  margin: EdgeInsets.only(top: 122.v),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage33,
                                  height: 137.v,
                                  width: 230.h,
                                  margin: EdgeInsets.only(
                                    left: 41.h,
                                    bottom: 18.v,
                                  ),
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
