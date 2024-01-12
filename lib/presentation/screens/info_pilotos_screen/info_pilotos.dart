import 'package:fantasyf1/api/configuracionApi.dart';
import 'package:fantasyf1/core/app_export.dart';
import 'package:fantasyf1/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_avif/flutter_avif.dart';
import 'package:get/get_utils/get_utils.dart';

import '../../../api/modelo/DriverModel.dart';
import '../../../api/modelo/DriversModel.dart' hide Driver;

class Info_Pilotos extends StatefulWidget {
  Driver? driver;
  String? driverName;
  Info_Pilotos({super.key, required this.driver});
  Info_Pilotos.s({super.key, required this.driverName}) {}

  setDriver(driverName) async {
    Client client = Client();
    DriverModel? dm = await client.getDriver(driverName);
    driver = dm!.mrData.driverTable.drivers.first;
  }

  @override
  State<Info_Pilotos> createState() => _Info_PilotosState();
}

class _Info_PilotosState extends State<Info_Pilotos> {
  Driver? driver;
  String? driverName;
  @override
  void initState() {
    driverName = widget.driverName;
    super.initState();
    setDriver(driverName);
    print(driverName);
  }

  setDriver(driverName) async {
    Client client = Client();
    DriverModel? dm = await client.getDriver(driverName);
    setState(() {
      driver = dm!.mrData.driverTable.drivers.first;
    });
  }

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
                                                                  .imgGroup3),
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
                                                              widget.driver ==
                                                                      null
                                                                  ? ""
                                                                  : '${widget.driver!.givenName} ${widget.driver!.familyName}',
                                                              style: CustomTextStyles
                                                                  .displaySmallWhiteA70001,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                            ),
                                                          ),
                                                          CustomImageView(
                                                            file: ImageConstant
                                                                .imgBandera(widget
                                                                            .driver ==
                                                                        null
                                                                    ? ""
                                                                    : widget
                                                                        .driver!
                                                                        .nationality),
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 41.v,
                                                                    right: 33.h,
                                                                    bottom:
                                                                        41.v),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                              AvifImage.asset(
                                                  widget.driver == null
                                                      ? ""
                                                      : ImageConstant
                                                          .imgDriverAvif(widget
                                                              .driver!
                                                              .driverId),
                                                  height: 250,
                                                  fit: BoxFit.scaleDown,
                                                  alignment:
                                                      Alignment.centerLeft)
                                            ])),
                                    Container(
                                        width: 215.h,
                                        margin: EdgeInsets.only(
                                            left: 35.h, top: 40.v),
                                        child: Text(
                                            widget.driver == null
                                                ? ""
                                                : informacionPiloto(),
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

  /// Navigates to the listaPilotosScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the listaPilotosScreen.
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.listaPilotosScreen);
  }

  /// Navigates to the checoPerezScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the checoPerezScreen.
  onTapImgArrowdownone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.infopilotos);
  }

  String informacionPiloto() {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.write("Nombre: " + widget.driver!.givenName + "\n");
    stringBuffer.write("Nombre familia: " + widget.driver!.familyName + "\n");
    stringBuffer.write("Fecha de nacimiento: " +
        widget.driver!.dateOfBirth.format('dd-MM-yyyy') +
        "\n");
    stringBuffer.write("Nacionalidad: " + widget.driver!.nationality + "\n");
    stringBuffer.write("Codigo: " + widget.driver!.code + "\n");
    stringBuffer.write("Numero: " + widget.driver!.permanentNumber + "\n");

    String info = stringBuffer.toString();
    return info;
  }
}
