import 'package:FantasyF1/core/app_export.dart';
import 'package:flutter/material.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../presentation/screens/info_pilotos_screen/info_pilotos.dart';

class DriverCard extends StatelessWidget {
  final String driverName;
  final String driverImageAsset;
  final int price;
  final int points;
  final VoidCallback onBuyPressed;

  const DriverCard({
    super.key,
    required this.driverName,
    required this.driverImageAsset,
    required this.price,
    required this.points,
    required this.onBuyPressed,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Tamaño máximo de la imagen basado en el ancho disponible
        final imageSize = constraints.maxWidth * 0.2;

        return Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 6,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              Image.asset(
                driverImageAsset,
                width: imageSize, // Tamaño deseado
                height: imageSize,
                fit: BoxFit.contain, // Ajusta la imagen dentro del espacio asignado
                errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                  // Si hay un error cargando la imagen, se mostrará esta imagen de placeholder
                  return Image.asset(
                    ImageConstant.imageNotFound, // Ruta de tu imagen de placeholder
                    width: imageSize,
                    height: imageSize,
                  );
                },
              ),

              SizedBox(width: 10),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        driverName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Precio: ${price.toStringAsFixed(0)}M',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Puntos: $points',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () => onTapDriver(context, driverName),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(14),
                    ),
                    child: Text('Info',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: const Color(0xFF000000),
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: onBuyPressed,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                    child: Text('Comprar',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: const Color(0xFF000000),
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void onTapDriver(BuildContext context, String driverId) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Info_Pilotos.s(
              driverName: driverName,
            )));
  }
}
