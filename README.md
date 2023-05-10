# challenge_project
Based on what you've mentioned, I was  able to successfully create a list of books and implement a search bar at the top. I used a dummy list of books and updated the state using setState to handle the search functionality. However, I did not implement icons as the exported files were small.

#Following features were to  be included:
1.Setup and use FVM : So its done in the project.
2.tapped_lints is included: The tapped lints are done.
3.Create a list with a few book items that can be used for the different sections and the search : There is file with name books.dart.The Book class has four properties - title, author, datePublished, and imageLink, which are all String type. The Book class also has a constructor that initializes these properties when creating a new Book object.
The books list is a list of Book objects, each representing a book with its title, author, date published, and image link. These objects are created using the Book constructor and added to the books list.

4."Continue" and "New" sections are in one list that is scrollable vertically
 "Continue" section can scroll horizontally
 The ListView should build items lazy by using ListView.builder
 Items should have touch feedback, but no navigation
 When the search results appear, the overlay expands and reveals the items
 When the user taps outside of the overlay, the overlay closes
 When the user clears the text, the overlay closes as well
 Bottom navigation bar does nothing on tap (only visuals)
 Light & Dark theme is possible and switch automatically when changing the device theme

 
