import 'package:fantasyf1/api/modelo/DriversModel.dart';
import 'package:flutter/material.dart';

import '../presentation/screens/checo_perez_screen/checo_perez_screen.dart';

class DriverCard extends StatelessWidget {
  final String driverName;
  final String driverImageAsset;
  final double price;
  final int points;
  //final Driver? onInfoPressed;

  const DriverCard({
    Key? key,
    required this.driverName,
    required this.driverImageAsset,
    required this.price,
    required this.points,
    //required this.onInfoPressed,
    //required this.onBuyPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          //Image.asset(driverImageAsset),
          Text(driverName, style: TextStyle(fontWeight: FontWeight.bold)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Precio: $price M'),
              Text('Puntos: $points'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  onTapDriver(this as BuildContext, driverName);
                },
                child: Text('Info'),
                style: ElevatedButton.styleFrom(primary: Colors.red),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Comprar'),
                style: ElevatedButton.styleFrom(primary: Colors.red),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void onTapDriver(BuildContext context, String driverId) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ChecoPerezScreen.s(
                  driverName: driverName,
                )));
  }
}
