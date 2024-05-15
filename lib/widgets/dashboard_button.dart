import 'package:flutter/material.dart';

class DashboardButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function onPressed;

  const DashboardButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Call the onPressed function when the container is tapped
        onPressed();
      },
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.brown,
                ),
                child: Icon(icon, color: Colors.white),
              ),
              const SizedBox(height: 8),
              Text(text, style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
