import 'package:flutter/material.dart';
import 'package:instagram_clone/create_page.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _buildBidy(),
      floatingActionButton: FloatingActionButton(onPressed: () {
              Navigator.push(context, 
                MaterialPageRoute(builder:  (context) => CreatePage())
              );
      },
      child: Icon(Icons.create),
      backgroundColor: Colors.blue,
      ),
    );
  }
      
  Widget _buildBidy() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1.0,
        mainAxisSpacing: 1.0,
        crossAxisSpacing: 1.0,
      ),
      itemCount: 5,
      itemBuilder: (context, index) {
        return _buildListItem(context, index);
      },
    );
  }
  Widget _buildListItem(BuildContext context, int index) {
    return Image.network(
      'https://a.espncdn.com/i/teamlogos/mlb/500/lad.png',
      fit: BoxFit.cover
    );
  }
}