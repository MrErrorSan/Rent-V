import 'package:flutter/material.dart';
import 'package:rentv/widgets/vehicle_list_item.dart';

class VehicleView extends StatefulWidget {
  const VehicleView({super.key});

  @override
  State<VehicleView> createState() => _VehicleViewState();
}

class _VehicleViewState extends State<VehicleView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vehicles'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.brown,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings_outlined),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 10,
          ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade400)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Sat,11 Nov 22',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Icon(Icons.arrow_forward),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Sun,11 Nov 22',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: ListView.builder(
                  //shrinkWrap: true,
                  //scrollDirection: Axis.horizontal,
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) =>
                      const VehicleListItem(
                    vehicleName: 'vehicleName',
                    companyName: 'companyName',
                    fuelType: 'fuelType',
                    address: 'address',
                    rent: 123.34,
                    vehicleImg: 'https://picsum.photos/200/?blur',
                    mutualConnectCount: 1,
                    mutualConnectImg: [
                      'https://picsum.photos/200/?blur',
                      'https://picsum.photos/200/?blur',
                      'https://picsum.photos/200/?blur'
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
