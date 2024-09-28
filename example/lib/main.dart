import 'package:flutter/material.dart';
import 'package:password_confirmation_style/password_confirmation_style.dart';

/// The main function to run the application.
void main() {
  runApp(const MyApp());
}

/// The root widget of the application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Using a color scheme with a seed color for consistent theming.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const TestPage(),
    );
  }
}


/// A test page demonstrating the usage of the [PasswordConfirmationStyle] widget.
///
/// This page contains two password input fields, allowing the user to
/// input a password and a confirmation password. It updates the UI based
/// on whether the passwords match, providing visual feedback for user
/// interaction.
///
/// The [TestPage] widget uses the [PasswordConfirmationStyle] to manage
/// password confirmation and a button that changes its color based on the
/// match status.
class TestPage extends StatefulWidget {
  /// Creates a [TestPage] widget.
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  /// Controller for the password text field.
  final TextEditingController _passwordController = TextEditingController();

  /// Controller for the confirmation password text field.
  final TextEditingController _confirmPasswordController = TextEditingController();

  /// Indicates whether the password and confirmation match.
  bool _isTrue = false;

  /// Updates the [_isTrue] state based on the comparison result of the passwords.
  ///
  /// This method is called by the [PasswordConfirmationStyle] widget
  /// to update the UI when the password comparison changes.
  void _getComparaison(bool isTrue) {
    setState(() {
      _isTrue = isTrue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // Password confirmation widget
          PasswordConfirmationStyle(
            passwordConfirmationController: _confirmPasswordController,
            passwordController: _passwordController,
            isTrue: _getComparaison,
          ),
          // Button that changes color based on password match status
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            height: 44,
            decoration: BoxDecoration(
              color: _isTrue ? const Color(0xFF007A77) : Colors.grey,
              border: Border.all(color: _isTrue ? const Color(0xFF007A77) : Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: Text(
                "Connect",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}