import 'package:flutter/material.dart';
import 'package:themoviedb/widgets/auth/password_form.dart';
import 'package:themoviedb/widgets/auth/user_name.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  TextEditingController pscController = TextEditingController(text: "Elton");
  TextEditingController userController = TextEditingController(text: "Baha");
  String warning = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          warning,
          style: const TextStyle(
              color: Color.fromARGB(66, 163, 36, 36), fontSize: 20),
        ),
        const SizedBox(height: 20),
        UserNameForm(
          userController: userController,
        ),
        const SizedBox(height: 20),
        PasswordForm(
          pscController: pscController,
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {
                if (pscController.text == "Elton" &&
                    userController.text == "Baha") {
                  setState(
                    () {
                      warning = "You are logged in successfully";
                      Navigator.of(context)
                          .pushReplacementNamed('/main_screen');
                    },
                  );
                } else {
                  setState(() {
                    warning =
                        'The login or password you entered is incorrect, please try again or register, ok? yes or not';
                  });
                }
              },
              style: const ButtonStyle(
                backgroundColor:
                    WidgetStatePropertyAll<Color>(Color(0xff01B4E4)),
              ),

              /// Widget State Property All changed
              child: const Text(
                "Login",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
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
