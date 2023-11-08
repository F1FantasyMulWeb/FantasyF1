import 'package:fantasyf1/core/app_export.dart';
import 'package:flutter/material.dart';

class CircuitoDeLaCornicheDeYedaScreen extends StatelessWidget {
  const CircuitoDeLaCornicheDeYedaScreen({Key? key})
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
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgEllipse1363x360,
                                height: 363.v,
                                width: 360.h,
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 15.h,
                                    vertical: 7.v,
                                  ),
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
                                      Container(
                                        width: 243.h,
                                        margin: EdgeInsets.only(
                                          left: 47.h,
                                          right: 38.h,
                                        ),
                                        child: Text(
                                          "msg_corniche_de_yeda".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.displaySmall,
                                        ),
                                      ),
                                      SizedBox(height: 7.v),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgImage29,
                                        height: 186.v,
                                        width: 321.h,
                                      ),
                                      SizedBox(height: 67.v),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 286.h,
                          margin: EdgeInsets.only(
                            left: 24.h,
                            top: 58.v,
                            right: 49.h,
                          ),
                          child: Text(
                            "msg_trazado_circuito".tr,
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
                              top: 6.v,
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
                                  imagePath: ImageConstant.imgImage30,
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
