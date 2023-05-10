import 'package:challenge_project/widgets/bottom_bar.dart';
import 'package:challenge_project/widgets/horizontal_list.dart';
import 'package:challenge_project/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:challenge_project/models/books.dart';
import 'package:challenge_project/widgets/section_tile.dart';
import 'package:challenge_project/widgets/vertical_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchQueryController = TextEditingController();
  List<Book> _searchResults = [];
  OverlayEntry? _overlayEntry;

  @override
  void initState() {
    super.initState();
    _searchQueryController.addListener(() {
      if (_searchQueryController.text.isNotEmpty) {
        _showOverlay();
      } else {
        _hideOverlay();
      }
      _performSearch(_searchQueryController.text);
    });
  }

  void _showOverlay() {
    OverlayState? overlayState = Overlay.of(context);
    _overlayEntry = OverlayEntry(
      builder: (BuildContext context) => Positioned(
        top: kToolbarHeight,
        left: 0.0,
        right: 0.0,
        child: Material(
          elevation: 4.0,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: _searchResults.length,
            itemBuilder: (BuildContext context, int index) {
              final Book book = _searchResults[index];
              return Column(
                children: [
                  ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(book.imageLink),
                    ),
                    title: Text(book.title),
                    subtitle: Text(book.author),
                    onTap: () {
                      _searchQueryController.text = book.title;
                      _searchQueryController.selection =
                          TextSelection.fromPosition(
                        TextPosition(offset: book.title.length),
                      );

                      _hideOverlay();
                    },
                  ),
                  const Divider(
                    height: 2,
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
    overlayState.insert(_overlayEntry!);
  }

  void _hideOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  void _performSearch(String query) {
    final List<Book> results = [];
    if (query.isNotEmpty) {
      for (int i = 0; i < books.length; i++) {
        final Book book = books[i];
        if (book.title.toLowerCase().contains(query.toLowerCase()) ||
            book.author.toLowerCase().contains(query.toLowerCase())) {
          results.add(book);
        }
      }
    }
    setState(() {
      _searchResults = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchAppBar(
        searchQueryController: _searchQueryController,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SectionTitle(title: 'Continue'),
            HorizontalList(),
            SectionTitle(title: 'New'),
            VerticalList(),
            MyBottomBar(),
          ],
        ),
      ),
    );
  }
}
