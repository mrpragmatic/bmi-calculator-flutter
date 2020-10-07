import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //prefix 0xFF with HEX color
      //In this case color was #1D2136
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF1D2136),
        scaffoldBackgroundColor: Color(0xFF1D2136),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Text('Body Text'),
      ),
      floatingActionButton: Theme(
        data: ThemeData(
          accentColor: Colors.amber,
        ),
        child: FloatingActionButton(
          onPressed: () {
            print('Pressed Button');
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
