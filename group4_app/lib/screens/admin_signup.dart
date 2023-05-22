import 'package:flutter/material.dart';

class AdminSignup extends StatefulWidget {
  const AdminSignup({super.key});

  @override
  _AdminSignup createState() => _AdminSignup();
}

class _AdminSignup extends State<AdminSignup> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController adminNameController = TextEditingController();
  TextEditingController adminNumberController = TextEditingController();
  TextEditingController adminPositionController = TextEditingController();
  TextEditingController adminHomeUnitController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final name = TextFormField(
      key: const Key('adminNameField'),
      controller: adminNameController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter your Name";
        }
      },
      decoration: const InputDecoration(
        hintText: "Name"
      ),
    );

    final employeeNumber = TextFormField(
      key: const Key('adminNumberField'),
      controller: adminNumberController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter your Employee Number";
        }
      },
      decoration: const InputDecoration(
        hintText: "Employee Number"
      ),
    );

    final position = TextFormField(
      key: const Key('adminPositionField'),
      controller: adminPositionController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter your Position";
        }
      },
      decoration: const InputDecoration(
        hintText: "Position"
      ),
    );

    final homeUnit = TextFormField(
      key: const Key('adminHomeUnitField'),
      controller: adminHomeUnitController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter your Home Unit";
        }
      },
      decoration: const InputDecoration(
        hintText: "Home Unit"
      ),
    );

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
            padding: const EdgeInsets.only(left: 40.0, right: 40.0),
            children: <Widget>[
              const Text(
              "Entrance Monitor Sign Up",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25)
            ),
            name,
            employeeNumber,
            position,
            homeUnit,
            signUpButton,
            backButton
            ],
          ),
        ),
      ),
    );

  }
}