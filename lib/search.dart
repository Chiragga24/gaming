import 'package:flutter/material.dart';

class Search extends SearchDelegate {
  
  @override
  List<Widget> buildActions(BuildContext context) {
      return <Widget>[
        IconButton(icon: Icon(Icons.close), onPressed: () {
          query = "";
        },
        ),
      ];
    }
  
    @override
    Widget buildLeading(BuildContext context) {
      return IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
        Navigator.pop(context);
      });
    }
  
    String selectedtext;
    @override
    Widget buildResults(BuildContext context) {
      return Container(
        child: Center(child: Text(selectedtext),),
      );
    }
  final List<String> listExample;
  Search(this.listExample);
  
  List<String> recentList = ["Game4","Game1"];
    @override
    Widget buildSuggestions(BuildContext context) {
    List<String> suggestionList = [];
    query.isEmpty
    ? suggestionList = recentList
    : suggestionList.addAll(listExample.where(
      (element) => element.contains(query)));

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            suggestionList[index],
          ),
          onTap: (){
            selectedtext = suggestionList[index];
            showResults(context);
          },
        );
      },
      );
  }
  
}