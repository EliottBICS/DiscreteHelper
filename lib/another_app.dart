import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DiscreteHelper'),
        centerTitle: true,
        backgroundColor: Colors.green[300],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('For now'),
              RaisedButton(
                onPressed: (){},
                color: Colors.orange,
                child: Text('i know how'),
              ),
              Container(
                color : Colors.cyan,
                padding: EdgeInsets.all(30),
                child: Text('to make rows of widgets'),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('and also '),
              Text('C\nO\nL\nU\nM\nN\nS'),
              Text('of ROWS'),
              Text('of Widgets'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Widgets I know :'),
              Container(
                color: Colors.green[200],
                padding: EdgeInsets.all(10),
                child: Text('containers'),
              ),
              RaisedButton(
                onPressed: () {},
                color: Colors.deepPurpleAccent[100],
                child: Text('buttons'),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                  image : NetworkImage('https://i.ytimg.com/vi/7oIAs-0G4mw/maxresdefault.jpg', scale: 7)
              ),
              Text('Text'),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Press'),
        backgroundColor: Colors.green[400],
      ),
    );
  }
}