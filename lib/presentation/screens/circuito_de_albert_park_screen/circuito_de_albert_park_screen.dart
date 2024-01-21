import 'package:FantasyF1/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../../api/listaCircuitos.dart';
import '../../../api/manejoDeLaInformcion.dart';

ManejoDeLaInformcion manejoDeLaInformcion = new ManejoDeLaInformcion();

ListaCircuitos listaCircuitos = new ListaCircuitos();

class CircuitoDeAlbertParkScreen extends StatefulWidget {
  CircuitoDeAlbertParkScreen({Key? key}) : super(key: key);

  @override
  _CircuitoDeAlbertParkScreen createState() => _CircuitoDeAlbertParkScreen();

  void setManejoDeLaInformcion(
      ManejoDeLaInformcion manejoDeLaInformcionEntrada) {
    manejoDeLaInformcion = manejoDeLaInformcionEntrada;
  }
}

class _CircuitoDeAlbertParkScreen extends State<CircuitoDeAlbertParkScreen> {
  @override
  void initState() {
    super.initState();
    listaCircuitos = manejoDeLaInformcion.getListaCircuitos();
  }

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
                                          nombreCircuito().toString().tr,
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
                            informacionCircuitoAlbertPark().toString().tr,
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyMediumJacquesFrancois,
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

  informacionCircuitoAlbertPark() {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.write("Country: " +
        listaCircuitos
            .getListaCircuitos()[0]
            .country
            .toString()
            .replaceAll("\"", ""));
    stringBuffer.write("\n");
    stringBuffer.write("Locality: " +
        listaCircuitos
            .getListaCircuitos()[0]
            .locality
            .toString()
            .replaceAll("\"", ""));
    stringBuffer.write("\n");
    stringBuffer.write("Latitud: " +
        listaCircuitos
            .getListaCircuitos()[0]
            .lat
            .toString()
            .replaceAll("\"", ""));
    stringBuffer.write("\n");
    stringBuffer.write("Longitud: " +
        listaCircuitos
            .getListaCircuitos()[0]
            .long
            .toString()
            .replaceAll("\"", ""));
    stringBuffer.write("\n");
    return stringBuffer;
  }

  nombreCircuito() {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.write(listaCircuitos
        .getListaCircuitos()[0]
        .circuitName
        .toString()
        .replaceAll("\"", ""));
    return stringBuffer;
  }
}
