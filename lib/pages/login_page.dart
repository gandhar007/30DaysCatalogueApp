import 'package:catalouge/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
            fit: BoxFit.cover,),
            const SizedBox(height: 20,),
            Text(
              "Welcome $name",
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Username",
                      hintText: "Enter Username",
                    ),
                    onChanged: (String value){
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: "Password",
                      hintText: "Enter Password",
                    ),
                  ),
                  const SizedBox(height: 40,),
                  Material(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(changeButton?80:7.5),
                    child: InkWell(
                      onTap: ()async{
                        setState(() {
                          changeButton = true;
                        });
                        await Future.delayed(const Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                        },
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        alignment: Alignment.center,
                        width: changeButton?80:150,
                        height: changeButton? 80:50,
                        child: changeButton?const Icon(
                            Icons.done,
                            color: Colors.white,
                        ): const Text(
                            "Login",
                             style: TextStyle(
                               color: Colors.white,
                               fontWeight: FontWeight.bold,
                               fontSize: 18,
                             ),
                        ),
                        ),
                      ),
                    ),
                  // ElevatedButton(
                  //   style: TextButton.styleFrom(
                  //     minimumSize: Size(150,40 ),
                  //   ),
                  //     onPressed:(){
                  //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //       },
                  //     child: Text("Login"),
                  // )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
