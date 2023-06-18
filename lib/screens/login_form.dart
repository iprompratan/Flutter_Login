import 'package:flutter/material.dart';
import 'menu_form.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => LoginFormState();

  // LoginFormState createState() {
  //   return LoginFormState();
  // }
}

class LoginFormState extends State<LoginForm> {
  //final GlobalKey<LoginFormState> _formKey = GlobalKey<LoginFormState>();
  //final _formKey = GlobalKey<LoginFormState>();
  final GlobalKey<FormState> _formKey = GlobalKey();
  // bool _validateAndSaveForm() {
  //   final form = _formKey.currentState!;
  //   if (form.validate()) {
  //     return true;
  //   }
  //   return false;
  // }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      //margin: const EdgeInsets.all(5.0),
      child: Column(
        children: <Widget>[
          emailFormField(),
          passwordFormField(),
          submitButton(),
        ],
      ),
    );
  }

  Widget emailFormField() {
    return TextFormField(
      decoration: const InputDecoration(
        hintText: 'Enter username',
      ),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'Please enter username';
        }
        return null;
      },
    );
  }

  Widget passwordFormField() {
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
        hintText: 'Enter password',
      ),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'Please enter password';
        }
        return null;
      },
    );
  }

  ElevatedButton submitButton() {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Processing Data')),
          );
          Navigator.push(context, MaterialPageRoute(builder: (context) => const MenuForm()),);
          //body: const MenuForm();
        }
      },
      child: const Text('เข้าสู่ระบบ'),
    );
  }
}
