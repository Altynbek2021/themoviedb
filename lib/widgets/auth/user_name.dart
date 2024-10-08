import 'package:flutter/material.dart';

class UserNameForm extends StatefulWidget {
  const UserNameForm({super.key});

  @override
  State<UserNameForm> createState() => UserNameFormState();
}

class UserNameFormState extends State<UserNameForm> {
  @override
  Widget build(BuildContext context) {
    TextEditingController userController = TextEditingController();

    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text("Username"),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          onChanged: (e) {
            print(e);
          },
          controller: userController,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(width: 2, color: Color(0xff01B4E4))),
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(width: 1, color: Color(0xff212529))),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(width: 1, color: Color(0xff212529))),
            disabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(width: 1, color: Color(0xff212529))),
          ),
        ),
      ],
    );
  }
}
