import 'package:fantasyf1/core/app_export.dart';
import 'package:flutter/material.dart';

class CircuitoDeMNacoScreen extends StatelessWidget {
  const CircuitoDeMNacoScreen({Key? key})
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
                            alignment: Alignment.topLeft,
                            children: [
                              Opacity(
                                opacity: 0.6,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgEllipse22,
                                  height: 363.v,
                                  width: 360.h,
                                  alignment: Alignment.center,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  height: 312.v,
                                  width: 247.h,
                                  margin: EdgeInsets.only(
                                    left: 47.h,
                                    top: 7.v,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                          width: 218.h,
                                          margin: EdgeInsets.only(right: 5.h),
                                          child: Text(
                                            "msg_circuito_de_m_naco".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: theme.textTheme.displaySmall,
                                          ),
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgImage36,
                                        height: 242.adaptSize,
                                        width: 242.adaptSize,
                                        alignment: Alignment.bottomCenter,
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                          height: 72.v,
                                          width: 48.h,
                                          decoration: BoxDecoration(
                                            color: appTheme.whiteA70001,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 201.h,
                          margin: EdgeInsets.only(
                            left: 24.h,
                            top: 58.v,
                          ),
                          child: Text(
                            "msg_trazado_circuito4".tr,
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyMediumJacquesFrancois,
                          ),
                        ),
                        SizedBox(height: 21.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                            height: 149.v,
                            width: 330.h,
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage37,
                                  height: 149.v,
                                  width: 306.h,
                                  alignment: Alignment.centerRight,
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgArrowleft,
                                  height: 33.adaptSize,
                                  width: 33.adaptSize,
                                  alignment: Alignment.bottomLeft,
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
