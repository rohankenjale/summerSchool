import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class Event {
  late String Title;
  late String Content;
  late String Date;
  Event(String Title, String Content, String Date) {
    this.Title = Title;
    this.Content = Content;
    this.Date = Date;
  }
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final EventList = [
      Event(
          'Hey',
          'Content ieuynhr4cik3gy rbiwkeruygf ikyefrgf oqlrgwf qlauiwgef o gwe fk  ywefg u ewygf oqegwrf uqyrgf ',
          'Date'),
      Event('Hey', 'Content', 'Date'),
      Event('Hey', 'Content', 'Date'),
      Event('Hey', 'Content', 'Date')
    ];
    return Scaffold(
        drawer: CustomDrawer(context),
        appBar: AppBar(
          title: const Text(
            'Summer-School',
          ),
        ),
        body: ListView.builder(
          itemCount: EventList.length,
          itemBuilder: (context, index) {
            return CustomCard(
              postContent: EventList[index].Content,
              postDate: EventList[index].Date,
              postTitle: EventList[index].Title,
            );
          },
        ));
  }
}
class CustomCard extends StatefulWidget {
  final String postContent;
  final String postTitle;
  final String postDate;
  const CustomCard(
      {Key? key,
        required this.postContent,
        required this.postTitle,
        required this.postDate})
      : super(key: key);
  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    final postContent = widget.postContent;
    final postTitle = widget.postTitle;
    final postDate = widget.postDate;
    return Card(
      margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              //post title
              postTitle,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              //postContent
              postContent,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  //postDate
                  postDate,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  child: const Text('BUY TICKETS'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
Widget CustomDrawer(BuildContext context) {
  return Drawer(
    // Add a ListView to the drawer. This ensures the user can scroll
    // through the options in the drawer if there isn't enough vertical
    // space to fit everything.
    child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
            padding: EdgeInsets.all(0),
            child: Image.asset(
              'assets/DrawerImage.jpg',
              fit: BoxFit.cover,
            )),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: ListTile(
            title: const Text('Your Tickets'),
            onTap: () {
              // Update the state of the app

              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: ListTile(
            title: const Text('Profile'),
            onTap: () {
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: ListTile(
            title: const Text('About Us'),
            onTap: () {
            },
          ),
        ),
      ],
    ),
  );
}
