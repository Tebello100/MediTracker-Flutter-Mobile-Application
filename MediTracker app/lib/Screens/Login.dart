import 'package:flutter/material.dart';
import 'package:helloworld/Routes/routes.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const Image(
              image: NetworkImage(
                  "https://1000logos.net/wp-content/uploads/2016/10/Apple-Logo.png")),
          const SizedBox(
            height: 20,
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              hintText: "Please enter your email",
              icon: Icon(
                Icons.email,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              hintText: "Please enter your password",
              icon: Icon(Icons.password, color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(RouteManager.secondPage);
            },
            child: const Text(
              "Sign in",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: const StadiumBorder(),
              minimumSize: const Size.fromHeight(50),
            ),
          ),
          const SizedBox(height: 40),
          const Text("Don't have an account?",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              )),
          const SizedBox(
            height: 10,
          ),
          OutlinedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteManager.thirdPage);
              },
              child: const Text(
                "Register",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: const StadiumBorder(),
                minimumSize: const Size.fromHeight(50),
              ))
        ],
      ),
    ));
  }
}
