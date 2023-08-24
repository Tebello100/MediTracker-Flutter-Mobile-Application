import 'package:flutter/material.dart';
import 'package:helloworld/Routes/routes.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration options"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(children: [
                Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(RouteManager.doctorPage);
                      },
                      icon: const Icon(
                        Icons.medical_services,
                        size: 50,
                        color: Colors.red,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(RouteManager.pharmacistPage);
                      },
                      icon: const Icon(
                        Icons.medication,
                        size: 50,
                        color: Colors.redAccent,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(RouteManager.patientPage);
                      },
                      icon: const Icon(
                        Icons.person,
                        size: 50,
                        color: Colors.redAccent,
                      )),
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
