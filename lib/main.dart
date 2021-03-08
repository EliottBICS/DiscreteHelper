import 'package:flutter/material.dart';
import 'question.dart';

void main() => runApp(MaterialApp(
  home : QuoteList()
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Question> questions = [
    Question("In \"Discrete Mathematics\", what does the \"Discrete\" stand for?", "Opposite of continuous"),
    Question("In a coin toss, using a fair coin, what is the probability that the coin lands on its head side?", "1/2 or 50%"),
    Question("What is the negation of the bits 010110", "101001")
  ];

  Widget questionTemplate(question){
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(question.intitulate,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.indigo)
            ),
            SizedBox( height: 6.0),
            Text(
              question.answer,
              style: TextStyle(
                fontSize: 14,
                color: Colors.indigo[900],
                fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questions'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.tealAccent[50],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start ,
        children: questions.map((question) => questionTemplate(question)).toList(),
      ),
    );
  }
}
