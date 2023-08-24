import 'package:flutter/material.dart';
import 'package:helloworld/Screens/Login.dart';
import 'package:helloworld/Screens/doctorsDetails.dart';
import 'package:helloworld/Screens/option.dart';
import 'package:helloworld/Screens/patientsDetails.dart';
import 'package:helloworld/Screens/pharmaDetails.dart';
import 'package:helloworld/Screens/register.dart';

class RouteManager {
  static const String home = "/";
  static const String secondPage = "/secondPage";
  static const String thirdPage = "/thirdPage";
  static const String fourthPage = "/fourthPage";
  static const String doctorPage = "/doctor";
  static const String pharmacistPage = "/pharmacist";
  static const String patientPage = "/patient";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (context) => const Login(),
        );
      case secondPage:
        return MaterialPageRoute(
          builder: (context) => const Options(),
        );
      case thirdPage:
        return MaterialPageRoute(
          builder: (context) => const Register(),
        );
      case doctorPage:
        return MaterialPageRoute(
          builder: (context) => const DoctorsDetails(),
        );
      case pharmacistPage:
        return MaterialPageRoute(
          builder: (context) => const PharmaDetails(),
        );
      case patientPage:
        return MaterialPageRoute(
          builder: (context) => const PatientsDetails(),
        );
      default:
        throw const FormatException("Route not found");
    }
  }
}
