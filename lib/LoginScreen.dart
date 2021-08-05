import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget{
  final emailController = TextEditingController();
  final passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => print('menu is pressed'),
        ),

        title: Text(
          'Login Page',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),


        ),
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontSize: 45.0,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.mail,
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (String value)=>print(value),
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(
                      Icons.remove_red_eye_rounded,
                    ),
                    prefixIcon: Icon(Icons.lock),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(

                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.blue,
                  ),
                  child: MaterialButton(
                    padding: EdgeInsets.all(15.0),
                    onPressed: (){
                      print('${emailController.text} \n ${passwordController.text}');
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
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an Account ?'
                    ),
                    TextButton(onPressed: (){
                      print('sign up');
                    },
                        child: Text(
                          'Sign Up'
                        )),
                  ],
                ),
              ],

            ),
          ),
        ),
      ),

    );
  }

}