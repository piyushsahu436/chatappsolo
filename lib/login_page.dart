

import 'package:flutter/material.dart';

import 'components/my_button.dart';
import 'components/my_textfield.dart';



class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final void Function()? onTap;

  LoginPage({super.key, required this.onTap});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.message,
              size: 50,
              color: Theme.of(context).colorScheme.primary,
            ),

            //message
            const SizedBox(
              height: 50,
            ),
            Text(
              'You have been missed',
              style: TextStyle(
                  fontSize: 16, color: Theme.of(context).colorScheme.primary),
            ),
            // textfield
            const SizedBox(
              height: 50,
            ),
            MyTextField(
              hintText: "email",
              obscureText: false,
              controller: _emailController,
            ),
            const SizedBox(
              height: 20,
            ),
            MyTextField(
              hintText: "password",
              obscureText: true,
              controller: _pwController,
            ),
            // textfield ended

            const SizedBox(
              height: 25,
            ),
            // login button code
            MyButton(
              text: 'Login',
              onTap: () => {},
            ),

            const SizedBox(
              height: 25,
            ),
            // register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style:
                  TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "Register now",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
