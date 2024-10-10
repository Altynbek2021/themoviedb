import 'package:flutter/material.dart';

class UserNameForm extends StatelessWidget {
  final TextEditingController userController;
  const UserNameForm({super.key, required this.userController});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Text("Username"),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          controller: userController,
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
        ),
      ],
    );
  }
}
