import 'package:flutter/material.dart';

class PasswordForm extends StatelessWidget {
  final TextEditingController pscController;
  const PasswordForm({
    super.key,
    required this.pscController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Password',
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          controller: pscController,
          obscureText: true,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(width: 2, color: Color(0xff01B4E4))),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(width: 1, color: Color(0xff212529))),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(width: 1, color: Color(0xff212529))),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(width: 1, color: Color(0xff212529))),
          ),
        )
      ],
    );
  }
}
