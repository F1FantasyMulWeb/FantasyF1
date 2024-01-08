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
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(driverImageAsset, width: 100, height: 60), // Adjust size accordingly
          SizedBox(height: 8),
          Text(driverName, style: const TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Precio: ${price.toStringAsFixed(0)}M', style: TextStyle(fontSize: 16)),
              Text('Puntos: $points', style: TextStyle(fontSize: 16)),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: onInfoPressed,
                child: Text('Info'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: onBuyPressed,
                child: Text('Comprar'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
