import 'package:flutter/material.dart';
import 'package:themoviedb/widgets/auth/password_form.dart';
import 'package:themoviedb/widgets/auth/user_name.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  TextEditingController pscController = TextEditingController();
  TextEditingController userController = TextEditingController();
  String warning = '';

  @override
  Widget build(BuildContext context) {
    print("Warning: $warning");
    return Column(
      children: [
        Text(
          warning,
          style: TextStyle(
              color: const Color.fromARGB(66, 163, 36, 36), fontSize: 20),
        ),
        SizedBox(height: 20),
        UserNameForm(
          userController: userController,
        ),
        SizedBox(height: 20),
        PasswordForm(
          pscController: pscController,
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {
                if (pscController.text == "Elton" &&
                    userController.text == "Baha") {
                  setState(() {
                    warning = "You are logged in successfully";
                  });
                } else {
                  setState(() {
                    warning =
                        'The login or password you entered is incorrect, please try again or register, ok? yes or not';
                  });
                }
                print(warning);
              },
              style: ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll<Color>(Color(0xff01B4E4))),

              /// Widget State Property All changed
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
