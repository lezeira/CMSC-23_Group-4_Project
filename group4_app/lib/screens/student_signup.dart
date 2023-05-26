import 'package:flutter/material.dart';

class StudentSignup extends StatefulWidget {
  const StudentSignup({super.key});

  @override
  _StudentSignup createState() => _StudentSignup();
}

class _StudentSignup extends State<StudentSignup> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController studentNameController = TextEditingController();
  TextEditingController studentUsernameController = TextEditingController();
  TextEditingController studentPasswordController = TextEditingController();
  TextEditingController studentCollegeController = TextEditingController();
  TextEditingController studentCourseController = TextEditingController();
  TextEditingController studentNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final name = TextFormField(
        key: const Key('studentNameField'),
        controller: studentNameController,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please enter your Name";
          }
        },
        decoration: const InputDecoration(hintText: "Name"));

    final username = TextFormField(
        key: const Key('studentUsernameField'),
        controller: studentUsernameController,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please enter your Username";
          }
        },
        decoration: const InputDecoration(hintText: "Username"));

    final password = TextFormField(
        key: const Key('studentPasswordField'),
        controller: studentPasswordController,
        obscureText: true,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please enter your Password";
          }
        },
        decoration: const InputDecoration(hintText: "Password"));

    final college = TextFormField(
        key: const Key('studentCollegeField'),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please enter your College";
          }
        },
        decoration: const InputDecoration(hintText: "College"));

    final course = TextFormField(
        key: const Key('studentCourseField'),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please enter your Course";
          }
        },
        decoration: const InputDecoration(hintText: "Course"));

    final studentNumber = TextFormField(
        key: const Key('studentNumberField'),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please enter your Student Number";
          }
        },
        decoration: const InputDecoration(hintText: "Student Number"));

    final signUpButton = Padding(
      key: const Key('signUpButton'),
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: ElevatedButton(
          onPressed: () => {
                setState(() {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState?.save();
                  }
                })
              },
          child: const Text("Sign Up")),
    );

    final backButton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: TextButton(
        onPressed: () async {
          Navigator.pop(context);
        },
        child: const Text('Back', style: TextStyle(color: Colors.grey)),
      ),
    );

    return Scaffold(
        backgroundColor: Colors.white,
        body: Form(
            key: _formKey,
            child: Center(
                child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.only(left: 40, right: 40),
              children: <Widget>[
                const Text("Student Sign Up",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25)),
                name,
                username,
                password,
                college,
                course,
                studentNumber,
                signUpButton,
                backButton
              ],
            ))));
  }
}
