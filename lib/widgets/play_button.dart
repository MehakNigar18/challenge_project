import 'package:flutter/material.dart';

class BookWithPlayButton extends StatelessWidget {
  final String imageLink;

  const BookWithPlayButton({
    super.key,
    required this.imageLink,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipOval(
          child: Image.network(
            imageLink,
            width: 120.0,
            height: 120.0,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8,
          right: 8,
          child: CircleAvatar(
            backgroundColor: Colors.purple,
            radius: 20,
            child: IconButton(
              icon: const Icon(Icons.play_arrow),
              color: Colors.white,
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
