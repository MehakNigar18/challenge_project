import 'package:flutter/material.dart';

class MyBottomBar extends StatefulWidget {
  const MyBottomBar({Key? key}) : super(key: key);

  @override
  _MyBottomBarState createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildBottomBarButton(Icons.home, "Home", 0),
          _buildBottomBarButton(Icons.rectangle_rounded, "Rounded", 1),
          _buildBottomBarButton(Icons.commit_sharp, "Compass", 2),
          _buildBottomBarButton(Icons.forward_10, "Forward", 3),
        ],
      ),
    );
  }

  Widget _buildBottomBarButton(IconData icon, String name, int index) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            if (_selectedIndex == index) {
              _selectedIndex = -1;
            } else {
              _selectedIndex = index;
            }
          });
        },
        child: SizedBox(
          height: 50.0,
          child: Container(
            height: 50.0,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon,
                    color: _selectedIndex == index
                        ? const Color.fromRGBO(91, 94, 166, 1)
                        : Colors.grey),
                if (_selectedIndex == index)
                  Text(
                    name,
                    style: const TextStyle(
                      color: Color.fromRGBO(91, 94, 166, 1),
                      fontSize: 12.0,
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
