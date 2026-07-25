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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TestPage(),
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
/// password confirmation and a button that enables itself once the
/// passwords match.
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
  final TextEditingController _confirmPasswordController =
      TextEditingController();

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
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme scheme = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: scheme.surface,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 420),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 56),
                Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    color: scheme.primary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Icon(Icons.lock_outline_rounded,
                      color: scheme.primary, size: 28),
                ),
                const SizedBox(height: 24),
                Text(
                  'Créer un mot de passe',
                  style: textTheme.headlineSmall
                      ?.copyWith(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 6),
                Text(
                  'Choisis un mot de passe sécurisé et confirme-le pour continuer.',
                  style: textTheme.bodyMedium?.copyWith(color: scheme.outline),
                ),
                const SizedBox(height: 32),
                PasswordConfirmationStyle(
                  passwordConfirmationController: _confirmPasswordController,
                  passwordController: _passwordController,
                  isTrue: _getComparaison,
                  floatingLabel: false,
                ),
                const SizedBox(height: 28),
                // Real interactive button (Material + InkWell) instead of a
                // plain Container: it's now properly disabled/greyed out
                // until the passwords match, and animates between states.
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  height: 50,
                  decoration: BoxDecoration(
                    color: _isTrue
                        ? scheme.primary
                        : scheme.onSurface.withOpacity(0.08),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(14),
                      onTap: _isTrue
                          ? () {
                              // TODO: hook up your submit logic here.
                            }
                          : null,
                      child: Center(
                        child: Text(
                          'Connect',
                          style: TextStyle(
                            color: _isTrue
                                ? scheme.onPrimary
                                : scheme.onSurface.withOpacity(0.35),
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
