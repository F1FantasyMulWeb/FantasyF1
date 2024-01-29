import 'package:FantasyF1/api/configuracionApi.dart';
import 'package:FantasyF1/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_avif/flutter_avif.dart';

import '../../../api/modelo/DriversModel.dart' as driverModel;
import '../../../api/modelo/singleDriver.dart' as singletonDriver;
class Info_Pilotos extends StatefulWidget {
  driverModel.Driver? driver;
  singletonDriver.Driver? singleDriver;
  Info_Pilotos({super.key, required this.driver});
  Info_Pilotos.s({super.key, required this.singleDriver}) {
  }


  @override
  State<Info_Pilotos> createState() => _Info_PilotosState();
}

class _Info_PilotosState extends State<Info_Pilotos> {


  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 59.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 50.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                        height: 375.v,
                                        width: double.maxFinite,
                                        child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              Align(
                                                alignment: Alignment.center,
                                                child: LayoutBuilder(
                                                  builder:
                                                      (BuildContext context,
                                                      BoxConstraints
                                                      constraints) {
                                                    return Container(
                                                      width:
                                                      constraints.maxWidth,
                                                      height:
                                                      constraints.maxHeight,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              ImageConstant
                                                                  .imgGroup36),
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      padding:
                                                      EdgeInsets.symmetric(
                                                          horizontal: 10.h,
                                                          vertical: 7.v),
                                                      child: Column(
                                                        mainAxisSize:
                                                        MainAxisSize.min,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .end,
                                                        children: [
                                                          Center(
                                                            child: Text(
                                                              widget.driver == null
                                                                  ? widget.singleDriver == null ? "".tr : '${widget.singleDriver!.givenName} ${widget.singleDriver!.familyName}'
                                                                  : '${widget.driver!.givenName} ${widget.driver!.familyName}',
                                                              style: CustomTextStyles
                                                                  .displaySmallMedium,
                                                              textAlign:
                                                              TextAlign
                                                                  .center,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                              AvifImage.asset(
                                                  ImageConstant.imgDriverAvif(
                                                      widget.driver == null
                                                          ? widget.singleDriver == null ? "".tr : widget.singleDriver!.driverId
                                                          : widget.driver!.driverId),
                                                  height: 250,
                                                  fit: BoxFit.scaleDown,
                                                  alignment:
                                                  Alignment.centerLeft),
                                              Positioned(
                                                top: -30.v,
                                                right: 33.h,
                                                bottom: 41.v,
                                                child: SizedBox(
                                                  width: 64.0,
                                                  height: 64.0,
                                                  child: FittedBox(
                                                    fit: BoxFit.contain,
                                                    child: Image.asset(
                                                      ImageConstant.imgBandera(widget.driver == null ? widget.singleDriver == null? "".tr : widget.singleDriver!.nationality : widget.driver!.nationality),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ])),
                                    Container(
                                        width: 215.h,
                                        margin: EdgeInsets.only(
                                            left: 35.h, top: 40.v),
                                        child: Text(informacionPiloto(),
                                            maxLines: 9,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodyMediumJacquesFrancois)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 28.h, top: 12.v, right: 44.h),
                                        child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowleft,
                                                  height: 33.adaptSize,
                                                  width: 33.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      top: 61.v, bottom: 3.v),
                                                  onTap: () {
                                                    onTapImgArrowleftone(
                                                        context);
                                                  }),
                                            ]))
                                  ]))))
                ]))));
  }

 ///Navigate to the last screen
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  String informacionPiloto() {
    StringBuffer stringBuffer = new StringBuffer();
    if(widget.driver == null){
      stringBuffer.write("Nombre: " + widget.singleDriver!.givenName + "\n");
      stringBuffer.write("Nombre familia: " + widget.singleDriver!.familyName + "\n");
      stringBuffer.write("Fecha de nacimiento: " +
          widget.singleDriver!.dateOfBirth.format('dd-MM-yyyy') +
          "\n");
      stringBuffer.write("Nacionalidad: " + widget.singleDriver!.nationality + "\n");
      stringBuffer.write("Codigo: " + widget.singleDriver!.code + "\n");
      stringBuffer.write("Numero: " + widget.singleDriver!.permanentNumber + "\n");

      String info = stringBuffer.toString();
      return info;
    }
    stringBuffer.write("Nombre: " + widget.singleDriver!.givenName + "\n");
    stringBuffer.write("Nombre familia: " + widget.singleDriver!.familyName + "\n");
    stringBuffer.write("Fecha de nacimiento: " +
        widget.singleDriver!.dateOfBirth.format('dd-MM-yyyy') +
        "\n");
    stringBuffer.write("Nacionalidad: " + widget.singleDriver!.nationality + "\n");
    stringBuffer.write("Codigo: " + widget.singleDriver!.code + "\n");
    stringBuffer.write("Numero: " + widget.singleDriver!.permanentNumber + "\n");

    String info = stringBuffer.toString();
    return info;
  }
}