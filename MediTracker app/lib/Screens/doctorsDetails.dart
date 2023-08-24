import 'package:flutter/material.dart';
import 'package:helloworld/Routes/routes.dart';

class DoctorsDetails extends StatelessWidget {
  const DoctorsDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Doctor's Details"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 120,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Full names",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Surname",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Personnel number",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "Re-enter password",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Confirm password",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: const Size.fromHeight(45),
                  shape: const StadiumBorder()),
            ),
            const SizedBox(
              height: 50,
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text(
                "Create an account",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  minimumSize: const Size.fromHeight(50),
                  shape: const StadiumBorder()),
            ),
            const SizedBox(
              height: 5,
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteManager.home);
              },
              child: const Text(
                "Cancel",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                minimumSize: const Size.fromHeight(50),
                shape: const StadiumBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
