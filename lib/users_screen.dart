import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/users_model.dart';

class UsersScreen extends StatelessWidget {
  // const UsersScreen({Key? key}) : super(key: key);

  List<User> users =[
    User(
      id: '1',
      name: 'Abdo Hussein',
      phone: '01156813268',
    ),
    User(
      id: '2',
      name: 'Ahmed Alaa',
      phone: '01051485465',
    ),
    User(
      id: '3',
      name: 'Ziad',
      phone: '010154546841',
    ),
    User(
      id: '1',
      name: 'Abdo Hussein',
      phone: '01156813268',
    ),
    User(
      id: '2',
      name: 'Ahmed Alaa',
      phone: '01051485465',
    ),
    User(
      id: '3',
      name: 'Ziad',
      phone: '010154546841',
    ),
    User(
      id: '1',
      name: 'Abdo Hussein',
      phone: '01156813268',
    ),
    User(
      id: '2',
      name: 'Ahmed Alaa',
      phone: '01051485465',
    ),
    User(
      id: '3',
      name: 'Ziad',
      phone: '010154546841',
    ),
    User(
      id: '1',
      name: 'Abdo Hussein',
      phone: '01156813268',
    ),
    User(
      id: '2',
      name: 'Ahmed Alaa',
      phone: '01051485465',
    ),
    User(
      id: '3',
      name: 'Ziad',
      phone: '010154546841',
    ),
    User(
      id: '1',
      name: 'Abdo Hussein',
      phone: '01156813268',
    ),
    User(
      id: '2',
      name: 'Ahmed Alaa',
      phone: '01051485465',
    ),
    User(
      id: '3',
      name: 'Ziad',
      phone: '010154546841',
    ),
    User(
      id: '1',
      name: 'Abdo Hussein',
      phone: '01156813268',
    ),
    User(
      id: '2',
      name: 'Ahmed Alaa',
      phone: '01051485465',
    ),
    User(
      id: '3',
      name: 'Ziad',
      phone: '010154546841',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Text(
            'Users',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),

      body:ListView.separated(
        itemBuilder: (context , index)=>userItemList(users[index]),
        itemCount: users.length,
        separatorBuilder: (BuildContext context, int index)=>Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Container(
            height: 1,
            color: Colors.grey[400],
          ),
        ),

      )
    );
  }

  Widget userItemList(User user){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.0),
      height: 50,
      child: Row(
        children: [
          CircleAvatar(
            radius: 20.0,
            backgroundColor: Colors.blue,
            child: Text(
              '${user.id}',

              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${user.name}',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${user.phone}',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
