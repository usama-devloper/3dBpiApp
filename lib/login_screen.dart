import 'package:flutter/material.dart';
import 'package:three_d_bpi_app/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
        actions: const [
          Icon(
            Icons.account_box,
          )
        ],
        leading: Image.asset('images/app_baar_logo.png'),
        title: const Text('My Home'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
              margin: const EdgeInsets.only(top: 120, right: 30, left: 30),
              child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Your Username",
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    hintStyle: const TextStyle(color: Colors.black),
                    labelText: "Username",
                    labelStyle: const TextStyle(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ))),
          Container(
              margin: const EdgeInsets.only(top: 30, right: 30, left: 30),
              child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Your Password",
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    hintStyle: const TextStyle(color: Colors.black),
                    labelText: "Password",
                    labelStyle: const TextStyle(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ))),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: const EdgeInsets.all(30),
                padding: const EdgeInsets.all(10.2),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40.0, vertical: 20.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      backgroundColor: Colors.green),
                  child: const Text(
                    ' Log In ',
                    style: TextStyle(
                        fontSize: 28.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}