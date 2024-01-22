import 'package:FantasyF1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppBarImageAndSubtitle extends StatelessWidget {
  AppBarImageAndSubtitle({
    Key? key,
    this.imagePath,
    this.svgPath,
    this.text,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;
  String? svgPath;
  String? text;
  EdgeInsetsGeometry? margin;
  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Container(
        child: Row(
          children: [
            Text(
              text ?? '',
              style: CustomTextStyles.titleLargeInterSemiBold.copyWith(
                color: theme.colorScheme.primary.withOpacity(1),
              ),
            ),
            SizedBox(width: 5), // Añade un espacio entre el texto y la imagen
            CustomImageView(
              svgPath: svgPath,
              imagePath: imagePath,
              height: 32.v,
              width: 33.h,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
