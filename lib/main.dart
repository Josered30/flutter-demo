import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_app/quote.dart';
import 'package:flutter_app/quote_card.dart';


void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}


class Home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<Home> {

  List<Quote> quotes = [
    Quote(author: 'Oscar Wilde',
        text: 'Be yourself; everyone else is already taken'),
    Quote(author: 'Oscar Wilde',
        text: 'I have nothing to declare except my genius'),
    Quote(author: 'Oscar Wilde',
        text: 'The truth is rarely pure and never simple'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Quotes list'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      body: Column(
        children: quotes.map((e) => QuoteCard(
          quote: e,
          delete: () {
            setState(() {
              quotes.remove(e);
            });
          },
        )).toList(),
      ),
    );
  }
}



