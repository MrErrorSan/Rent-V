import 'package:flutter/material.dart';

class FriendsRequestsView extends StatefulWidget {
  const FriendsRequestsView({super.key});

  @override
  State<FriendsRequestsView> createState() => _FriendsRequestsViewState();
}

class _FriendsRequestsViewState extends State<FriendsRequestsView> {
  // This controller will store the value of the search bar
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 10,
        ),
        child: Column(
          children: [
            Container(
              height: 60,
              color: Colors.grey.shade200,
              child: TextField(
                focusNode: _searchFocusNode,
                controller: _searchController,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search...',
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder()),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      width: 50,
                      height: 50,
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
                    title: Text('Item ${index + 1}'),
                    subtitle: Text('Item ${index + 1}'),
                    trailing: SizedBox(
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.add_circle_outline),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.remove_circle_outline),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
