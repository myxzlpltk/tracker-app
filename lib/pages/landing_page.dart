import 'package:flutter/material.dart';
import 'package:tracker_app/commons/constant.dart';
import 'package:tracker_app/commons/routes.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const DefaultTextStyle(
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
            child: Text('Selamat Datang'),
          ),
          const SizedBox(
            height: 50,
          ),
          const Image(
            image: AssetImage('assets/image/welcome.png'),
            width: 215,
            height: 180,
          ),
          const SizedBox(
            height: 65,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: primaryColor,
              minimumSize: const Size(double.infinity, 48),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, Routes.login);
            },
            child: const Text(
              "Masuk",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              minimumSize: const Size(double.infinity, 48),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: const BorderSide(color: primaryColor),
              ),
            ),
            onPressed: () {
              //Navigator.pushNamed(context, Routes.register);
            },
            child: const Text(
              "Daftar",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: primaryColor,
              ),
            ),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 8),
      color: Colors.white,
    );
  }
}
