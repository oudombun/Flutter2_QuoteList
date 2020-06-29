import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(title:"quote 1",author:"oudom"),
    Quote(title:"quote 2",author:"oudom"),
    Quote(title:"quote 3",author:"oudom"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Quote"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      body: Column(
        children: quotes.map((quote) =>
            QuoteCard(
                quote:quote,
                delete:(){
                  setState(() {
                    quotes.remove(quote);
                  });
                }
            )).toList(),
      ),
    );
  }
}
