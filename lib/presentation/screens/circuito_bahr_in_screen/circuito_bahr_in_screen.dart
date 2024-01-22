import 'package:FantasyF1/api/modelo/RaceScheduleModel.dart';
import 'package:FantasyF1/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_avif/flutter_avif.dart';

class CircuitoBahrInScreen extends StatelessWidget {
  final Circuit circuit;
  CircuitoBahrInScreen({Key? key, required this.circuit}) : super(key: key);

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
                                width: 100.v,
                                alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(right: 80),
                                border: Border.all(
                                    width: 2.5, color: Colors.black54),
                                fit: BoxFit.fitWidth,
                                imagePath: ImageConstant.imgBandera(
                                    circuit.location.country),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 8.v),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        ImageConstant.imgVector1,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        circuit.circuitName,
                                        style: theme.textTheme.displaySmall,
                                      ),
                                      SizedBox(height: 10.v),
                                      AvifImage.asset(
                                          ImageConstant.imgCircuitoAvif(
                                              circuit.circuitId),
                                          height: 200,
                                          fit: BoxFit.scaleDown,
                                          alignment: Alignment.centerLeft),
                                      SizedBox(height: 18.v),
                                  CustomImageView(
                                    width: 100.v,
                                    alignment: Alignment.centerRight,
                                    margin: EdgeInsets.only(right: 80),
                                    border: Border.all(
                                        width: 2.5, color: Colors.black54),
                                    fit: BoxFit.fitWidth,
                                    imagePath: ImageConstant.imgBandera(
                                        circuit.location.country)),
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
                                    informacionCircuitoBahr().toString().tr,
                                    maxLines: 6,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .bodyMediumJacquesFrancois,
                                  ),
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgArrowleft,
                                height: 33.adaptSize,
                                width: 33.adaptSize,
                                alignment: Alignment.bottomLeft,
                                onTap: () {
                                  onTapImgArrowdownone(context);
                                },
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

  informacionCircuitoBahr() {
    StringBuffer stringBuffer = new StringBuffer();

    stringBuffer.write("Country: " + circuit.location.country);
    stringBuffer.write("\n");
    stringBuffer.write("Locality: " + circuit.location.locality);
    stringBuffer.write("\n");
    stringBuffer.write("Latitud: " + circuit.location.lat);
    stringBuffer.write("\n");
    stringBuffer.write("Longitud: " + circuit.location.long);
    stringBuffer.write("\n");
    return stringBuffer;
  }

  onTapImgArrowdownone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.listaCircuitosScreen);
  }
}
