import 'package:flutter/material.dart';

class DriverCard extends StatelessWidget {
  final String driverName;
  final String driverImageAsset;
  final double price;
  final int points;
  final VoidCallback onInfoPressed;
  final VoidCallback onBuyPressed;

  const DriverCard({
    super.key,
    required this.driverName,
    required this.driverImageAsset,
    required this.price,
    required this.points,
    required this.onInfoPressed,
    required this.onBuyPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 6,
            offset: Offset(0, 3),
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
                    style: TextStyle(
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
                onPressed: onInfoPressed,
                child: Text('Info'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(14),
                ),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: onBuyPressed,
                child: Text('Comprar'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
