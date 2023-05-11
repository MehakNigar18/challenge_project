import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          _buildBottomBarButton("assets/bottomBarIcons/Home.svg", "Home", 0),
          _buildBottomBarButton(
            "assets/bottomBarIcons/rect.svg",
            "Rectangle",
            1,
          ),
          _buildBottomBarButton(
            "assets/bottomBarIcons/Compass.svg",
            "Compass",
            2,
          ),
          _buildBottomBarButton(
            "assets/bottomBarIcons/Union.svg",
            "Forward",
            3,
          ),
        ],
      ),
    );
  }

  Widget _buildBottomBarButton(String iconPath, String name, int index) {
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
                SvgPicture.asset(iconPath,
                    color: _selectedIndex == index
                        ? const Color.fromRGBO(91, 94, 166, 1)
                        : Colors.grey),
                if (_selectedIndex == index)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Rubik',
                        fontStyle: FontStyle.normal,
                        color: Color.fromRGBO(91, 94, 166, 1),
                        fontSize: 12.0,
                      ),
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
