import 'package:flutter/material.dart';
import 'quote.dart';


class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteCard({this.quote,this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[800],
      margin: EdgeInsets.fromLTRB(15,20,15,0),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(quote.title,style: TextStyle(
                fontSize: 18,
                color: Colors.white
            ),),
            SizedBox(height: 8,),
            Text(quote.author,style: TextStyle(
                fontSize: 18,
                color: Colors.grey
            ),),
            SizedBox(height: 8,),
            FlatButton.icon(
                color: Colors.grey[900],
                onPressed: delete,
                icon: Icon(Icons.delete,color: Colors.grey,),
                label: Text("Delete",style: TextStyle(
                  color: Colors.grey
                ),)
            )
          ],
        ),
      ),
    );
  }
}
