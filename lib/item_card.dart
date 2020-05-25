import 'package:flutter/material.dart';


class DataCard extends StatelessWidget {

  final Function delete;
  final String data;
  DataCard({ this.data, this.delete });

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                '$data',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 6.0),
              SizedBox(height: 8.0),
              FlatButton.icon(
                onPressed: delete,
                label: Text('detete card'),
                icon: Icon(Icons.delete),
              )
            ],
          ),
        )
    );
  }
}