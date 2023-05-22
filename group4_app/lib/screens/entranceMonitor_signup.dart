import 'package:flutter/material.dart';

class EntranceMonitorSignup extends StatefulWidget {
  const EntranceMonitorSignup({super.key});

  @override
  _EntranceMonitorSignup createState() => _EntranceMonitorSignup();
}

class _EntranceMonitorSignup extends State<EntranceMonitorSignup> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController monitorNameController = TextEditingController();
  TextEditingController monitorNumberController = TextEditingController();
  TextEditingController monitorPositionController = TextEditingController();
  TextEditingController monitorHomeUnitController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final name = TextFormField(
      key: const Key('adminNameField'),
      controller: monitorNameController,
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
      controller: monitorNumberController,
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
      controller: monitorPositionController,
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
      controller: monitorHomeUnitController,
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
              "Admin Sign Up",
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