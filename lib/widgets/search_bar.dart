import 'package:flutter/material.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TextEditingController searchQueryController;

  const SearchAppBar({
    Key? key,
    required this.searchQueryController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Card(
        child: TextField(
          controller: searchQueryController,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 15.0,
            ),
            hintText: "Search For Something",
            border: InputBorder.none,
            suffixIcon: IconButton(
              onPressed: () {
                searchQueryController.clear();
              },
              icon: const Icon(Icons.search),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
