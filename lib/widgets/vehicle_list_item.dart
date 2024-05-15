import 'package:flutter/material.dart';

class VehicleListItem extends StatelessWidget {
  final String vehicleName;
  final String companyName;
  final String fuelType;
  final String address;
  final double rent;
  final String vehicleImg;
  final int mutualConnectCount;
  final List mutualConnectImg;
  final String? carType;
  final String? seats;

  const VehicleListItem(
      {super.key,
      required this.vehicleName,
      required this.companyName,
      required this.fuelType,
      required this.address,
      required this.rent,
      required this.vehicleImg,
      required this.mutualConnectCount,
      required this.mutualConnectImg,
      this.carType,
      this.seats});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        //color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      vehicleName,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      companyName,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '$fuelType${((seats != null || carType != null)) ? " | " : ""}${seats ?? ""}${seats != null && carType != null ? " | " : ""}${carType ?? ""}',
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Colors.grey.shade500),
                    color: Colors.white,
                    image: DecorationImage(
                      image: NetworkImage(vehicleImg),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
            ),
            child: Text(
              address,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          //Row(),
          const Divider(color: Colors.grey),
          Text(
            'Rs. $rent',
            textAlign: TextAlign.left,
          )
        ],
      ),
    );
  }
}
