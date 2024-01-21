import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'carrusel_s01_model.dart';
export 'carrusel_s01_model.dart';

class CarruselS01Widget extends StatefulWidget {
  const CarruselS01Widget({
    Key? key,
    int? indiceInicio,
  })  : this.indiceInicio = indiceInicio ?? 1,
        super(key: key);

  final int indiceInicio;

  @override
  _CarruselS01WidgetState createState() => _CarruselS01WidgetState();
}

class _CarruselS01WidgetState extends State<CarruselS01Widget> {
  late CarruselS01Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CarruselS01Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: responsiveVisibility(
        context: context,
        phone: false,
        tablet: false,
      ),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.6,
        height: MediaQuery.sizeOf(context).height,
        child: CarouselSlider(
          items: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/carruseles/carrusel_s01/carrusel_Imagen02.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
                alignment: Alignment(-0.15, 0.0),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/carruseles/carrusel_s01/carrusel_Imagen15.png',
                fit: BoxFit.cover,
                alignment: Alignment(0.15, 0.0),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/carruseles/carrusel_s01/carrusel_Imagen05.png',
                fit: BoxFit.cover,
                alignment: Alignment(0.08, 0.0),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/carruseles/carrusel_s01/carrusel_Imagen01.jpg',
                fit: BoxFit.cover,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/carruseles/carrusel_s01/carrusel_Imagen13.png',
                fit: BoxFit.cover,
                alignment: Alignment(0.28, 0.0),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/carruseles/carrusel_s01/carrusel_Imagen08.png',
                fit: BoxFit.cover,
                alignment: Alignment(0.08, 0.0),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/carruseles/carrusel_s01/carrusel_Imagen11.png',
                fit: BoxFit.cover,
                alignment: Alignment(-0.37, 0.0),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/carruseles/carrusel_s01/carrusel_Imagen06.png',
                fit: BoxFit.cover,
                alignment: Alignment(0.1, 0.0),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/carruseles/carrusel_s01/carrusel_Imagen09.png',
                fit: BoxFit.cover,
                alignment: Alignment(0.22, 0.0),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/carruseles/carrusel_s01/carrusel_Imagen04.png',
                fit: BoxFit.cover,
                alignment: Alignment(-0.18, 0.0),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/carruseles/carrusel_s01/carrusel_Imagen03.png',
                fit: BoxFit.cover,
                alignment: Alignment(0.2, 0.0),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/carruseles/carrusel_s01/carrusel_Imagen14.png',
                fit: BoxFit.cover,
                alignment: Alignment(0.3, 0.0),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/carruseles/carrusel_s01/carrusel_Imagen12.png',
                fit: BoxFit.cover,
                alignment: Alignment(-0.37, 0.0),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/carruseles/carrusel_s01/carrusel_Imagen07.png',
                fit: BoxFit.cover,
                alignment: Alignment(-0.65, 0.0),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/carruseles/carrusel_1/carrusel_Imagen10.png',
                fit: BoxFit.cover,
                alignment: Alignment(-0.35, 0.0),
              ),
            ),
          ],
          carouselController: _model.carouselPCController ??=
              CarouselController(),
          options: CarouselOptions(
            initialPage: min(
                valueOrDefault<int>(
                  widget.indiceInicio,
                  0,
                ),
                14),
            viewportFraction: 0.8,
            disableCenter: true,
            enlargeCenterPage: true,
            enlargeFactor: 0.2,
            enableInfiniteScroll: true,
            scrollDirection: Axis.horizontal,
            autoPlay: true,
            autoPlayAnimationDuration: Duration(milliseconds: 1000),
            autoPlayInterval: Duration(milliseconds: (1000 + 5000)),
            autoPlayCurve: Curves.linear,
            pauseAutoPlayInFiniteScroll: true,
            onPageChanged: (index, _) => _model.carouselPCCurrentIndex = index,
          ),
        ),
      ),
    );
  }
}
