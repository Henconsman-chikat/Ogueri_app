import 'package:flutter/material.dart';
import '../custom_widgets/custom_input_field.dart';
import '../custom_widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            CustomInputField(
              hint: 'Email',
              controller: emailController,
            ),
            CustomInputField(
              hint: 'Password',
              controller: passwordController,
            ),
            CustomButton(
              label: 'Login',
              onPressed: () {
                // Handle login logic
              },
            ),
          ],
        ),
      ),
    );
  }
}
