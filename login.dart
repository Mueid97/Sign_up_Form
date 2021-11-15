

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: EdgeInsets.all(25),
        child: Center(
          child: SingleChildScrollView(

            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Icon(
                  Icons.person_outlined,
                  color: Colors.grey[300],
                  size: 140,
                ),
                SizedBox(
                  height: 13,
                ),
                Text(
                  'Welcome',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Sign in to continue',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[400],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: TextFormField(
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.mail,
                        size: 30,
                      ),
                      labelText: 'Email',
                      labelStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Colors.grey[400]),
                    ),
                    validator: (Email){
                      if(Email!.isEmpty){
                        return 'Email is Empty';
                      }
                      return null;
                    },
                  ),

                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: TextFormField(
                    obscureText: true,
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.lock,
                        size: 30,
                      ),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Colors.grey[400]),
                    ),
                    validator:(password){
                      if(password!.isEmpty){
                        return 'password is Empty';
                      }
                      return null;
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forget Password',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                      ),
                      onPressed: () {

                      },
                      child: Text('Login')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
