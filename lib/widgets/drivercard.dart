import 'package:fantasyf1/api/modelo/DriversModel.dart';
import 'package:flutter/material.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../presentation/screens/checo_perez_screen/checo_perez_screen.dart';

class DriverCard extends StatelessWidget {
  final String driverName;
  final String driverImageAsset;
  final double price;
  final int points;
  final Driver? onInfoPressed;
  final VoidCallback onBuyPressed;

  const DriverCard({
    Key? key,
    required this.driverName,
    required this.driverImageAsset,
    required this.price,
    required this.points,
    required this.onInfoPressed,
    required this.onBuyPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
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
            width: 64,
            height: 64,
          ),
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
                  const SizedBox(height: 4),
                  Text(
                    'Precio: ${price.toStringAsFixed(0)}M',
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Puntos: $points',
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              ElevatedButton(
                onPressed: () => onTapDriver(context, onInfoPressed!),
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
              const SizedBox(height: 8),
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
  }

  void onTapDriver(BuildContext context, Driver driver) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ChecoPerezScreen(driver: driver)));
  }
}
