import 'package:flutter/material.dart';
import 'package:rentv/views/driver_license_view.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Settings"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.brown,
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () {
              //*SAVE new info if available
              Navigator.pop(context);
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Center(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.brown,
                        image: DecorationImage(
                          image:
                              NetworkImage('https://picsum.photos/200/?blur'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: 'Name *',
                    floatingLabelStyle: TextStyle(fontSize: 18),
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(height: 15),
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: 'Email *',
                    floatingLabelStyle: TextStyle(fontSize: 18),
                    hintStyle: TextStyle(color: Colors.grey),
                    hintText: null,
                  ),
                ),
                const SizedBox(height: 15),
                const TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: 'Age *',
                    floatingLabelStyle: TextStyle(fontSize: 18),
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                      ),
                      child: const Text(
                        'Driver License',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const DriverLicenseView()));
                      },
                      child: const Text(
                        'Upload',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.brown,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
