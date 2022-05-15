import 'package:flutter/material.dart';
import 'package:tracker_app/commons/constant.dart';
import 'package:tracker_app/commons/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              const DefaultTextStyle(
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
                child: Text('MASUK'),
              ),
              const SizedBox(
                height: 50,
              ),
              const Image(
                image: AssetImage('assets/image/login.png'),
                width: 215,
                height: 180,
              ),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: formStyle.copyWith(
                    hintText: 'Masukkan Email', labelText: 'Email'),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: formStyle.copyWith(
                    hintText: 'Masukkan Password', labelText: 'Password'),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.register);
                },
                child: const Text(
                  "Belum Punya Akun?",
                  style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
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
            ],
          ),
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 8),
          color: Colors.white,
        ),
      ),
    );
  }
}
