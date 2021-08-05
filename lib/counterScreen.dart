import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(

              onPressed: () {
                setState(() {
                  counter--;
                  print(counter);
                });
              },
              child: Text(
                'minus',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18.0,
                ),
              ),
            ),
            Text(
              '$counter',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            MaterialButton(
              onPressed: (){
                setState(() {
                  counter++;
                  print(counter);
                });
            },
              child: Text(
                'plus',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18.0,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
