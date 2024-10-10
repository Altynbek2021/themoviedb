import 'package:flutter/material.dart';
import 'package:themoviedb/widgets/auth/form_widget.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login to your account"),
        titleTextStyle: const TextStyle(color: Colors.white),
      ),
      body: ListView(
        children: const [_HeaderWidget()],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "To use TMDB's editing and rating features, as well as personalized recommendations, you'll need to sign in to your account. If you don't have an account, signing up is free and easy. Click here to get started",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Register",
                style: TextStyle(fontSize: 16, color: Color(0xff01B4E4)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "If you have registered but have not received a confirmation email click here to resend the email",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Verify email",
                style: TextStyle(fontSize: 16, color: Color(0xff01B4E4)),
              ),
            ),
            const SizedBox(height: 20),
            const FormWidget()
          ],
        ),
      ),
    );
  }
}
