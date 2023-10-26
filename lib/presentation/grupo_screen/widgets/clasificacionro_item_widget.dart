import 'package:fantasyf1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ClasificacionroItemWidget extends StatelessWidget {
  ClasificacionroItemWidget({
    Key? key,
    this.onTapClasificacionro,
  }) : super(
          key: key,
        );

  VoidCallback? onTapClasificacionro;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapClasificacionro?.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12.h,
          vertical: 25.v,
        ),
        decoration: AppDecoration.outlinePrimary4.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder24,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 16.v,
                bottom: 24.v,
              ),
              child: Text(
                "lbl_clasificaci_n".tr,
                style: CustomTextStyles.headlineSmallWhiteA700,
              ),
            ),
            CustomImageView(
              svgPath: ImageConstant.imgGroup,
              height: 55.v,
              width: 59.h,
              margin: EdgeInsets.only(
                left: 21.h,
                bottom: 14.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
