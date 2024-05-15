import 'package:flutter/material.dart';

class DashboardReview extends StatelessWidget {
  final String review;
  final String username;
  final String pic;
  const DashboardReview(
      {super.key,
      required this.review,
      required this.username,
      required this.pic});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.brown.shade100),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.only(
                top: 2,
                left: 5,
                right: 5,
              ),
              child: Text(
                review,
                style: const TextStyle(fontWeight: FontWeight.w400),
                maxLines: 3,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.only(
                top: 2,
                left: 5,
                right: 5,
              ),
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.brown.shade100,
                  borderRadius: const BorderRadiusDirectional.only(
                    bottomStart: Radius.circular(10),
                    bottomEnd: Radius.circular(10),
                  )),
              child: Wrap(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundImage: NetworkImage(pic),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    username,
                    style: const TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
