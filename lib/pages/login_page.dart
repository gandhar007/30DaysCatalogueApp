import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/login_image.png",
          fit: BoxFit.cover,),
          SizedBox(height: 20,),
          Text(
            "Welcome",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Username",
                    hintText: "Enter Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter Password",
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                    onPressed:(){
                      print("Hello");
                      },
                    child: Text("Login"),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}

