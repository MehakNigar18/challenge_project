# challenge_project
Based on what you've mentioned, I was  able to successfully create a list of books and implement a search bar at the top. I used a dummy list of books and updated the state using setState to handle the search functionality. However, I did not implement icons as the exported files were small.

# Following features were to  be included:
1.Setup and use FVM : So its done in the project.

2.tapped_lints is included: The tapped lints are done.

3.Create a list with a few book items that can be used for the different sections and the search : There is file with name books.dart.The Book class has four properties - title, author, datePublished, and imageLink, which are all String type. The Book class also has a constructor that initializes these properties when creating a new Book object.

4."Continue" and "New" sections are in one list that is scrollable vertically : Designed this in best way i could of think of.

5."Continue" section can scroll horizontally : stateful widget called HorizontalList that displays a horizontal list of books with their titles, authors, and an image of the book cover with a play button overlay on top of it. It imports two other widgets, BookWithPlayButton and PlayButton, and the Book model class.The build method of this widget returns an Expanded widget containing an IntrinsicHeight widget, which then contains a ListView.builder widget. This ListView.builder widget generates a list of child widgets by iterating over the books list and creating a SizedBox widget for each book. Each SizedBox widget contains a Column widget that displays the book image with a play button overlay on top, followed by the book title and author in a centered Column. 

VerticalList widget that displays a list of books in a vertical format.The widget builds an Expanded widget that takes up all the available space in its parent. It contains an IntrinsicHeight widget to ensure that all the list items have the same height. The list itself is built using a ListView.builder widget that creates a card for each book in the books list.Each card has two Expanded widgets, one for the book image and one for the book details. The image is loaded from the internet using the Image.network widget and displayed with a ClipRRect widget to give it rounded corners. The book details are displayed in a column with a title, author, publication date, and a notification icon.
 
6.The ListView should build items lazy by using ListView.builder: Lists are being built using ListView
 
7.Items should have touch feedback, but no navigation : Done on search items

8.When the search results appear, the overlay expands and reveals the items. When the user taps outside of the overlay, the overlay closes.When the user clears the text, the overlay closes as well.For this search is implemented in this code through a text field controller, a search function _performSearch(), and an overlay widget _showOverlay() that displays search results below the app bar when the text field is being used. The initState() method sets up a listener on the text field controller that calls _performSearch() when the text field value changes. _performSearch() updates the _searchResults list based on the search query, and build() updates the UI to display the search results when they exist. _showOverlay() creates a new OverlayEntry and inserts it into the app's overlay with overlayState.insert(). The overlay contains a ListView.builder() that displays the search results as ListTile widgets with the book's title, author, and image. When a user taps on a search result, the _searchQueryController is updated with the selected book's title, and the overlay is hidden with _hideOverlay().

9.Bottom navigation bar does nothing on tap (only visuals) : Done like the one in figma , icons svg implemented
  
10.Light & Dark theme is possible and switch automatically when changing the device theme : Currenlty i wrapped the app with system theme as Flutter has built-in support for both light and dark themes, which can be defined using the ThemeData class. but I do know how to implement with a state manager if that is required i can implement that too.

 
![Screenshot (409)](https://github.com/MehakNigar18/challenge_project/assets/127245431/29f33221-6855-458d-b47e-652b393ff0be)
![Screenshot (410)](https://github.com/MehakNigar18/challenge_project/assets/127245431/62ff3e7f-d7a3-4631-aec9-e67d21918d47)
![Screenshot (411)](https://github.com/MehakNigar18/challenge_project/assets/127245431/831b720e-7378-4ffd-9822-72972be3bf2b)
with icons from figma
![Screenshot (415)](https://github.com/MehakNigar18/challenge_project/assets/127245431/367dd250-3963-4041-919c-547bfdfbf150)
