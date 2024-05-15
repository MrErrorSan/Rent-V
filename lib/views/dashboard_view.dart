import 'package:flutter/material.dart';
import 'package:rentv/views/friends_view.dart';
import 'package:rentv/views/notification_view.dart';
import 'package:rentv/views/profile_setting_view.dart';
import 'package:rentv/views/vehicle_view.dart';
import 'package:rentv/widgets/dashboard_button.dart';
import 'package:rentv/widgets/dashboard_faq.dart';
import 'package:rentv/widgets/dashboard_review.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.brown,
        leading: IconButton(
          icon: const Icon(
            Icons.account_circle,
          ),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const ProfileSettingView()));
          },
        ),
        title: const Text(
          'RentV',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle the action when the notification icon is pressed, if needed
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const NotificationView()));
            },
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
              SizedBox(
                width: double.infinity,
                height: 95,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: NetworkImage('https://picsum.photos/200/?blur'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 95,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.brown),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DashboardButton(
                        text: "Vehicles",
                        icon: Icons.checklist_outlined,
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const VehicleView()));
                        },
                      ),
                      DashboardButton(
                        text: "Friends",
                        icon: Icons.people_outlined,
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const FriendsView()));
                        },
                      ),
                      DashboardButton(
                        text: "Trips",
                        icon: Icons.route_outlined,
                        onPressed: () {},
                      ),
                      DashboardButton(
                        text: "Register",
                        icon: Icons.app_registration_outlined,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Why RentV ?',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) =>
                      const DashboardFaqView(
                    imageUrl: 'https://picsum.photos/200/?blur',
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Happy Customers',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                flex: 1,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) =>
                      const DashboardReview(
                    review:
                        '    Lorem ipsum dolor sit amet, consectetur adipiscing elit Vestibulum id magna quis dolor pulvinar condimentum nec non velit.Nullam euismod justo quis dui cursus, non vestibulum tortor aliquam.',
                    username: 'username',
                    pic: 'https://picsum.photos/200/?blur',
                  ),
                ),
              ),
              const SizedBox(height: 150),
            ],
          ),
        ),
      ),
    );
  }
}

//! SNACK BAR Code 
// void showSnackBar(BuildContext context, int index) {
//   var deletedRecord = lists[index];
//   setState(() {
//     lists.removeAt(index);
//   });
//   SnackBar snackBar = SnackBar(
//     content: Text('Deleted $deletedRecord'),
//     action: SnackBarAction(
//       label: "UNDO",
//       onPressed: () {
//         setState(() {
//           lists.insert(index, deletedRecord);
//         });
//       },
//     ),
//   );
//   Scaffold.of(context).showSnackBar(snackBar);
// }