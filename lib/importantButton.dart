import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImportantButton extends StatelessWidget{

  String email ;
  String password ;
  ImportantButton(this.email , this.password);


  @override
  Widget build(BuildContext context) {

    return Container(

      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.blue,
      ),
      child: MaterialButton(
        padding: EdgeInsets.all(15.0),
        onPressed: (){
          print('${this.email} \n ${this.password}');
        },
        child: Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
        minWidth: double.infinity,
      ),
    );
  }
}
