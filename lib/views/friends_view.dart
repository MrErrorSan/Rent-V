import 'package:flutter/material.dart';
import 'package:rentv/views/friends_connections_view.dart';
import 'friends_requests_view.dart';

class FriendsView extends StatefulWidget {
  const FriendsView({super.key});

  @override
  State<FriendsView> createState() => _FriendsViewState();
}

class _FriendsViewState extends State<FriendsView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Friends'),
          foregroundColor: Colors.white,
          backgroundColor: Colors.brown,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(
                kToolbarHeight), // Set the height of the TabBar
            child: Container(
              color: Colors.white, // Set the background color of the tabs here
              child: const TabBar(
                // labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                //indicatorColor: Colors.brown,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(
                    text: "Connections",
                  ),
                  Tab(text: "Requests")
                ],
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person_add_alt_1_outlined),
            )
          ],
        ),
        body: const TabBarView(
          children: [
            FriendsConnectionsView(),
            FriendsRequestsView(),
          ],
        ),
      ),
    );
  }
}
