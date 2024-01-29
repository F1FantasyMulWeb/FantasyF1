import 'package:FantasyF1/api/modelo/RaceScheduleModel.dart';
import 'package:FantasyF1/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_avif/flutter_avif.dart';
import '../../../flutter_flow/flutter_flow_model.dart';
import '../../componentes/widgets_app_bard_mv/cont_app_bard1_mv/cont_app_bard1_mv_widget.dart';
import '../../componentes/widgets_menu_lateral/cont_menu_lateral/cont_menu_lateral_widget.dart';
import 'info_circuitos_model.dart';

class Infocircuito_screen extends StatefulWidget {
  final Circuit circuit;

  const Infocircuito_screen({Key? key, required this.circuit,String? rutaPagina,}) :
        this.rutaPagina = rutaPagina ?? 'info_circuito',
        super(key: key);
  final String rutaPagina;

  @override
  _Infocircuito_screenState createState() => _Infocircuito_screenState();
}
class _Infocircuito_screenState extends State<Infocircuito_screen> {

  late Circuit circuit = widget.circuit;
  late Info_circuitos_model _model;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Info_circuitos_model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        drawer: Container(
          width: 300.0,
          child: Drawer(
            elevation: 16.0,
            child: wrapWithModel(
              model: _model.contMenuLateralModel,
              updateCallback: () => setState(() {}),
              child: ContMenuLateralWidget(
                rutaPagina: widget.rutaPagina,
              ),
            ),
          ),
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              wrapWithModel(
                model: _model.contAppBard1MvModel,
                updateCallback: () => setState(() {}),
                child:  const ContAppBard1MvWidget(),
              ),

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
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 8.v),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        ImageConstant.imgVector1,
                                      ),
                                      fit: BoxFit.fill,
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
                                          fit: BoxFit.fitHeight,
                                          alignment: Alignment.centerLeft),

                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

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
                                  width: 100.v,
                                  alignment: Alignment.centerRight,

                                  border: Border.all(
                                      width: 2.5, color: Colors.black54),
                                  fit: BoxFit.fitWidth,
                                  imagePath: ImageConstant.imgBandera(
                                      circuit.location.country)),
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
