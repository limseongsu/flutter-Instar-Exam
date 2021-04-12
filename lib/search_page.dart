import 'package:flutter/material.dart';
import 'package:flutter_instar_examclone/create_page.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => CreatePage()));
        },
        child: Icon(Icons.create),
        backgroundColor: Colors.blue,
      ),
    );
  }

  Widget _buildBody() {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.0,
          mainAxisSpacing: 1.0,
          crossAxisSpacing: 1.0,
        ),
        itemBuilder: (context, index) {
          return _buildListItem(context, index);
        }
    );
  }

  Widget _buildListItem(BuildContext context, int index) {
    return Image.network(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfmyXWjHebz51cA1fc_f82ndJU3JJWyhHyGQ&usqp=CAU',
    fit: BoxFit.cover
    );
  }
}
