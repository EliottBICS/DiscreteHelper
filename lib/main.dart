import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: BicsCard()
  ));
}


class BicsCard extends StatefulWidget {
  @override
  _BicsCardState createState() => _BicsCardState();
}

class _BicsCardState extends State<BicsCard> {

  int bicsLevel = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            bicsLevel = bicsLevel + 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.indigo[700],
      ),
      backgroundColor: Colors.lightBlueAccent[100],
      appBar: AppBar(
        title: Text(
            'Student Profile'
        ) ,
        centerTitle: true,
        backgroundColor: Colors.cyan[700],
        elevation: 0,
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/thumb.JPG'),
                    radius: 40,
                  ),
                ),
                Divider(
                  height: 90,
                  color: Colors.teal,
                ),
                Text(
                  'NAME',
                  style: TextStyle(
                    color: Colors.indigo[700],
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'Eliott Bonte',
                      style: TextStyle(
                        color: Colors.indigo[700],
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(icon: Icon(Icons.how_to_reg), onPressed: () {},
                      color: Colors.indigo[700],),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'LEVEL',
                  style: TextStyle(
                    color: Colors.indigoAccent,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '$bicsLevel',
                  style: TextStyle(
                    color: Colors.indigo[700],
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text("SCORE",
                  style: TextStyle(
                    color: Colors.indigoAccent,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.score_rounded,
                      color: Colors.indigo[700],
                      size: 40,
                    ),
                    SizedBox(width: 10),
                    Text(
                      '98',
                      style: TextStyle(
                        color: Colors.indigo,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ]
          )
      ),
    );
  }
}

