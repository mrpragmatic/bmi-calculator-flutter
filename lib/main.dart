import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //prefix 0xFF with HEX color
      //In this case color was #1D2136
      theme: ThemeData(
          primaryColor: Color(0xFF1D2136),
          accentColor: Colors.purple,
          scaffoldBackgroundColor: Color(0xFF1D2136),
          textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white))),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Pressed Button');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
