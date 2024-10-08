import 'package:flutter/material.dart';
import 'package:themoviedb/widgets/auth/password_form.dart';
import 'user_name.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        UserNameForm(),
        SizedBox(height: 20),
        PasswordForm(),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Color(0xff01B4E4))),
              child: Text(
                "Login",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Reset password",
                style: TextStyle(color: Color(0xff01B4E4)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
