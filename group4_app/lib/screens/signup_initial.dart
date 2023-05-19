import 'package:flutter/material.dart';


class SignupInitial extends StatefulWidget {
  const SignupInitial({super.key});
  @override
  _SignupInitial createState() => _SignupInitial();

  
}

class _SignupInitial extends State<SignupInitial> {

  @override
  Widget build(BuildContext context) {
    
    final Student = Padding(
      key: const Key('student'),
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ElevatedButton(
        onPressed: () async {
          // await context.read<AuthProvider>().signIn(
          //       emailController.text.trim(),
          //       passwordController.text.trim(),
          //     );
        },
        child: const Text('Student', style: TextStyle(color: Colors.white)),
      ),
    );

    final Admin = Padding(
      key: const Key('admin'),
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ElevatedButton(
        onPressed: () async {
          // await context.read<AuthProvider>().signIn(
          //       emailController.text.trim(),
          //       passwordController.text.trim(),
          //     );
        },
        child: const Text('Admin', style: TextStyle(color: Colors.white)),
      ),
    );

    final E_Monitor = Padding(
      key: const Key('entrance monitor'),
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ElevatedButton(
        onPressed: () async {
          // await context.read<AuthProvider>().signIn(
          //       emailController.text.trim(),
          //       passwordController.text.trim(),
          //     );
        },
        child: const Text('Entrance Monitor', style: TextStyle(color: Colors.white)),
      ),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Student,
            Admin,
            E_Monitor,
            backButton
          ],
        ),
      )
    );
  }
}