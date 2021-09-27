import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:api/card.dart';
import 'dart:convert';
import 'dart:async';


class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String quote = "";

  getQuote() async{
    Response res = await get(Uri.parse('https://api.kanye.rest/'));
    Map data = jsonDecode(res.body);
    quote = data['quote'].toString();
    // print(data);
    return quote;
  }

  @override
  void initState() {
    super.initState();

    getQuote();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[400],

      appBar: AppBar(
        title: Text(
          'KanYé',
          style: TextStyle(
            fontSize: 30,
            letterSpacing: 2,
          ),
          ),
        centerTitle: true,
        backgroundColor: Colors.brown[500],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QCard(quote),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            getQuote();
          });
        },
        child: Icon(Icons.air),
        backgroundColor: Colors.brown[500],
      ),
    );
  }
}