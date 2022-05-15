import 'package:flutter/material.dart';
import 'package:tracker_app/commons/constant.dart';
import 'package:tracker_app/commons/routes.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

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
                child: Text('DAFTAR'),
              ),
              const SizedBox(
                height: 50,
              ),
              const DefaultTextStyle(
                style: TextStyle(
                  fontSize: 12,
                  color: primaryColor,
                ),
                child: Text('Mohon isikan data diri anda dengan benar'),
              ),
              const SizedBox(
                height: 50,
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
                    hintText: 'Masukkan Nomor Hp', labelText: 'Nomor Hp'),
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
              TextFormField(
                decoration: formStyle.copyWith(
                    hintText: 'Masukkan Konfirmasi Password',
                    labelText: 'Konfirmasi Password'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.login);
                },
                child: const Text(
                  "Sudah Punya Akun?",
                  style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
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
                  "Daftar",
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
