import 'package:fantasyf1/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 166.v,
      width: 302.h,
      padding: EdgeInsets.symmetric(vertical: 1.v),
      decoration: AppDecoration.fillWhiteA,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 161.v,
              width: 302.h,
              decoration: BoxDecoration(
                color: appTheme.blueGray100,
                borderRadius: BorderRadius.circular(
                  17.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(
                right: 6.h,
                bottom: 10.v,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 1.h,
                      vertical: 4.v,
                    ),
                    decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder6,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "lbl_puntos4".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                        SizedBox(height: 15.v),
                        Text(
                          "lbl".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                        SizedBox(height: 4.v),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 5.h,
                      top: 37.v,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 7.h,
                      vertical: 10.v,
                    ),
                    decoration: AppDecoration.fillRed.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder19,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 2.v),
                        Text(
                          "lbl_comprar".tr,
                          style: CustomTextStyles.titleSmallRobotoGray20001,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(
                left: 37.h,
                bottom: 10.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 6.h,
                vertical: 4.v,
              ),
              decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder6,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "lbl_precio".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                  SizedBox(height: 15.v),
                  Text(
                    "lbl_m".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                  SizedBox(height: 4.v),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.only(
                right: 5.h,
                bottom: 54.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 22.h,
                vertical: 11.v,
              ),
              decoration: AppDecoration.fillRed.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder19,
              ),
              child: Text(
                "lbl_info".tr,
                style: CustomTextStyles.titleSmallRobotoGray20001,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img_max_verstappen_body,
            height: 66.v,
            width: 62.h,
            radius: BorderRadius.circular(
              31.h,
            ),
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              left: 1.h,
              top: 11.v,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(
                left: 15.h,
                right: 13.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 105.h,
                vertical: 24.v,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgVector1,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 82.v),
                  Text(
                    "lbl".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
