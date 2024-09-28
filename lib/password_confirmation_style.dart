library password_confirmation_style;

import 'package:flutter/material.dart';

/// A widget that provides password confirmation functionality with visual feedback.
///
/// This widget displays two text fields for password and password confirmation.
/// It provides real-time visual feedback by comparing the characters entered
/// in both fields and displays matching or unmatched indicators.
///
/// The [PasswordConfirmationStyle] widget allows customization through various
/// parameters including styles, decorations, and behaviors for both password
/// fields. It also supports callbacks for different events such as changes
/// to the text fields.
///
class PasswordConfirmationStyle extends StatefulWidget {
  /// A controller for managing the password text field.
  final TextEditingController passwordController;

  /// A controller for managing the confirmation password text field.
  final TextEditingController passwordConfirmationController;

  /// Color for matched characters (default is green).
  final Color? iconColorMatched;

  /// Color for unmatched characters (default is red).
  final Color? iconColorUnMatched;

  /// Color before any input is entered (default is transparent).
  final Color? iconColorInitial;

  /// Icon to represent each character (default is a circle).
  final IconData? icon;

  /// Size of the icon (default is 9.0).
  final double? iconSize;

  /// Vertical padding for icons (default is 1.0).
  final double? iconPaddingVertical;

  /// Horizontal padding for icons (default is 1.0).
  final double? iconPaddingHorizontal;

  /// Callback function that returns a boolean indicating if the passwords match.
  final Function(bool)? isTrue;

  /// Style for the password text field.
  final TextStyle? stylePassword;

  /// Style for the confirmation text field.
  final TextStyle? stylePasswordConfirmation;

  /// Decoration for the password field.
  final InputDecoration? inputDecorationPassword;

  /// Decoration for the confirmation field.
  final InputDecoration? inputDecorationPasswordConfirmation;

  /// Validator for password field.
  final String? Function(String?)? validatorPassword;

  /// Validator for confirmation field.
  final String? Function(String)? validatorPasswordConfirmation;

  /// Callback for password change.
  final String? Function(String)? onChangedPassword;

  /// Callback for confirmation change.
  final String? Function(String)? onChangedPasswordConfirmation;

  /// Callback for password field tap.
  final Function? onTapPassword;

  /// Callback for confirmation field tap.
  final Function? onTapPasswordConfirmation;

  /// Callback for password edit completion.
  final Function? onEditionCompletePassword;

  /// Callback for confirmation edit completion.
  final Function? onEditionCompletePasswordConfirmation;

  /// Callback for password submission.
  final Function(String)? onFieldSubmittedPassword;

  /// Callback for confirmation submission.
  final Function(String)? onFieldSubmittedPasswordConfirmation;

  /// Max length for password input.
  final int? maxLengthPassword;

  /// Character used for obscuring password.
  final String? obscuringCharacterPassword;

  /// Character used for obscuring confirmation.
  final String? obscuringCharacterPasswordConfirmation;

  /// Whether to obscure password text.
  final bool? obscureTextPassword;

  /// Whether to obscure confirmation text.
  final bool? obscureTextPasswordConfirmation;

  /// Focus node for password field.
  final FocusNode? focusNodePassword;

  /// Focus node for confirmation field.
  final FocusNode? focusNodePasswordConfirmation;

  /// Whether to show cursor in password field.
  final bool? showCursorPassword;

  /// Whether to show cursor in confirmation field.
  final bool? showCursorPasswordConfirmation;

  /// Whether password field is enabled.
  final bool? enabledPassword;

  /// Whether confirmation field is enabled.
  final bool? enabledPasswordConfirmation;

  /// Width of the cursor in password field.
  final double? cursorWidthPassword;

  /// Width of the cursor in confirmation field.
  final double? cursorWidthPasswordConfirmation;

  /// Height of the cursor in password field.
  final double? cursorHeightPassword;

  /// Height of the cursor in confirmation field.
  final double? cursorHeightPasswordConfirmation;

  /// Color of the cursor in password field.
  final Color? cursorColorPassword;

  /// Color of the cursor in confirmation field.
  final Color? cursorColorPasswordConfirmation;

  /// Scroll padding for password field.
  final EdgeInsets? scrollPaddingPassword;

  /// Scroll padding for confirmation field.
  final EdgeInsets? scrollPaddingPasswordConfirmation;

  /// Parameters:
  /// - [passwordController]: A controller for managing the password text field.
  /// - [passwordConfirmationController]: A controller for managing the confirmation password text field.
  /// - [iconColorMatched]: Color for matched characters (default is green).
  /// - [iconColorUnMatched]: Color for unmatched characters (default is red).
  /// - [iconColorInitial]: Color before any input is entered (default is transparent).
  /// - [icon]: Icon to represent each character (default is a circle).
  /// - [iconSize]: Size of the icon (default is 9.0).
  /// - [iconPaddingVertical]: Vertical padding for icons (default is 1.0).
  /// - [iconPaddingHorizontal]: Horizontal padding for icons (default is 1.0).
  /// - [isTrue]: Callback function that returns a boolean indicating if the passwords match.
  /// - [stylePassword]: Style for the password text field.
  /// - [stylePasswordConfirmation]: Style for the confirmation text field.
  /// - [inputDecorationPassword]: Decoration for the password field.
  /// - [inputDecorationPasswordConfirmation]: Decoration for the confirmation field.
  /// - [validatorPassword]: Validator for password field.
  /// - [validatorPasswordConfirmation]: Validator for confirmation field.
  /// - [onChangedPassword]: Callback for password change.
  /// - [onChangedPasswordConfirmation]: Callback for confirmation change.
  /// - [onTapPassword]: Callback for password field tap.
  /// - [onTapPasswordConfirmation]: Callback for confirmation field tap.
  /// - [onEditionCompletePassword]: Callback for password edit completion.
  /// - [onEditionCompletePasswordConfirmation]: Callback for confirmation edit completion.
  /// - [onFieldSubmittedPassword]: Callback for password submission.
  /// - [onFieldSubmittedPasswordConfirmation]: Callback for confirmation submission.
  /// - [maxLengthPassword]: Max length for password input.
  /// - [obscuringCharacterPassword]: Character used for obscuring password.
  /// - [obscuringCharacterPasswordConfirmation]: Character used for obscuring confirmation.
  /// - [obscureTextPassword]: Whether to obscure password text (default is false).
  /// - [obscureTextPasswordConfirmation]: Whether to obscure confirmation text (default is false).
  /// - [focusNodePassword]: Focus node for password field.
  /// - [focusNodePasswordConfirmation]: Focus node for confirmation field.
  /// - [showCursorPassword]: Whether to show cursor in password field.
  /// - [showCursorPasswordConfirmation]: Whether to show cursor in confirmation field.
  /// - [enabledPassword]: Whether password field is enabled.
  /// - [enabledPasswordConfirmation]: Whether confirmation field is enabled.
  /// - [cursorWidthPassword]: Width of the cursor in password field.
  /// - [cursorWidthPasswordConfirmation]: Width of the cursor in confirmation field.
  /// - [cursorHeightPassword]: Height of the cursor in password field.
  /// - [cursorHeightPasswordConfirmation]: Height of the cursor in confirmation field.
  /// - [cursorColorPassword]: Color of the cursor in password field.
  /// - [cursorColorPasswordConfirmation]: Color of the cursor in confirmation field.
  /// - [scrollPaddingPassword]: Scroll padding for password field.
  /// - [scrollPaddingPasswordConfirmation]: Scroll padding for confirmation field.

  const PasswordConfirmationStyle({
    super.key,
    required this.passwordController,
    required this.passwordConfirmationController,
    this.iconColorMatched = Colors.green,
    this.iconColorUnMatched = Colors.red,
    this.iconColorInitial = Colors.transparent,
    this.icon = Icons.circle,
    this.iconSize = 9.0,
    this.iconPaddingVertical = 1.0,
    this.iconPaddingHorizontal = 1.0,
    this.isTrue,
    this.stylePassword,
    this.stylePasswordConfirmation,
    this.inputDecorationPassword = const InputDecoration(
      labelText: 'Password',
      border: OutlineInputBorder(),
    ),
    this.inputDecorationPasswordConfirmation = const InputDecoration(
      labelText: 'Confirmation Password',
      border: OutlineInputBorder(),
    ),
    this.validatorPassword,
    this.validatorPasswordConfirmation,
    this.onChangedPassword,
    this.onChangedPasswordConfirmation,
    this.onTapPassword,
    this.onTapPasswordConfirmation,
    this.onEditionCompletePassword,
    this.onEditionCompletePasswordConfirmation,
    this.onFieldSubmittedPassword,
    this.onFieldSubmittedPasswordConfirmation,
    this.maxLengthPassword,
    this.obscuringCharacterPassword = '•',
    this.obscuringCharacterPasswordConfirmation = '•',
    this.obscureTextPassword = false,
    this.obscureTextPasswordConfirmation = false,
    this.focusNodePassword,
    this.focusNodePasswordConfirmation,
    this.showCursorPassword,
    this.showCursorPasswordConfirmation,
    this.enabledPassword,
    this.enabledPasswordConfirmation,
    this.cursorWidthPassword = 2.0,
    this.cursorWidthPasswordConfirmation = 2.0,
    this.cursorHeightPassword,
    this.cursorHeightPasswordConfirmation,
    this.cursorColorPassword,
    this.cursorColorPasswordConfirmation,
    this.scrollPaddingPassword = const EdgeInsets.all(20.0),
    this.scrollPaddingPasswordConfirmation = const EdgeInsets.all(20.0),
  });

  @override
  State<PasswordConfirmationStyle> createState() =>
      PasswordConfirmationStyleState();
}

/// The [PasswordConfirmationStyle] widget allows customization through various
/// parameters including styles, decorations, and behaviors for both password
/// fields. It also supports callbacks for different events such as changes
/// to the text fields.
///
class PasswordConfirmationStyleState extends State<PasswordConfirmationStyle> {
  List<bool> _charComparisonResults = [];
  int _numberBullet = 0;

  void _compareChars(String confirmPassword) {
    String password = widget.passwordController.text.trim();

    List<bool> comparisonResults = [];
    int minLength = password.length < confirmPassword.length
        ? password.length
        : confirmPassword.length;

    for (int i = 0; i < minLength; i++) {
      comparisonResults.add(password[i] == confirmPassword[i]);
    }

    setState(() {
      _charComparisonResults = comparisonResults;
    });
  }

  bool _allValuesAreSame(List<bool> comparisonResults) {
    final distinctValues = comparisonResults.toSet();
    return distinctValues.length == 1 &&
        distinctValues.first; // All true or all false
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
          child: TextFormField(
            controller: widget.passwordController,
            style: widget.stylePassword ??
                const TextStyle(
                  letterSpacing: 1.4,
                  fontSize: 16,
                ),
            decoration: widget.inputDecorationPassword,
            validator: widget.validatorPassword,
            onChanged: (value) {
              widget.onChangedPassword?.call(value);
              setState(() {
                _numberBullet = value.length; // Update bullet count
              });
            },
            onTap: () {
              widget.onTapPassword;
            },
            onEditingComplete: () {
              widget.onEditionCompletePassword;
            },
            onFieldSubmitted: (value) {
              widget.onFieldSubmittedPassword?.call(value);
            },
            maxLength: widget.maxLengthPassword,
            obscuringCharacter: widget.obscuringCharacterPassword!,
            obscureText: widget.obscureTextPassword!,
            focusNode: widget.focusNodePassword,
            showCursor: widget.showCursorPassword,
            enabled: widget.enabledPassword,
            cursorWidth: widget.cursorWidthPassword!,
            cursorHeight: widget.cursorHeightPassword,
            cursorColor: widget.cursorColorPassword,
            scrollPadding: widget.scrollPaddingPassword!,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 25,
            vertical: 5.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(_numberBullet, (index) {
              Color bgColor;
              if (index < _charComparisonResults.length) {
                bgColor = _charComparisonResults[index]
                    ? widget.iconColorMatched!
                    : widget.iconColorUnMatched!;
              } else {
                bgColor = widget.iconColorInitial!; // No comparison yet
              }
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: widget.iconPaddingHorizontal ?? 1.0,
                  vertical: widget.iconPaddingVertical ?? 1.0,
                ),
                child: Icon(
                  widget.icon!,
                  size: widget.iconSize!,
                  color: bgColor,
                ), // Bullet point
              );
            }),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
          child: TextFormField(
            controller: widget.passwordConfirmationController,
            style: widget.stylePasswordConfirmation ??
                const TextStyle(
                  letterSpacing: 1.4,
                ),
            readOnly: (_numberBullet == 0),
            decoration: widget.inputDecorationPasswordConfirmation,
            onChanged: (value) {
              _compareChars(value);
              widget.onChangedPasswordConfirmation?.call(value);
              if (value.length > _numberBullet) {
                widget.passwordConfirmationController.text =
                    value.substring(0, _numberBullet); // Limit input
                widget.passwordConfirmationController.selection =
                    TextSelection.fromPosition(
                  TextPosition(
                      offset:
                          widget.passwordConfirmationController.text.length),
                );
              }
              if (value.length == widget.passwordController.text.length) {
                widget.isTrue!(_allValuesAreSame(_charComparisonResults));
              } else {
                widget.isTrue!(false);
              }
            },
            onTap: () {
              widget.onTapPasswordConfirmation;
            },
            onEditingComplete: () {
              widget.onEditionCompletePasswordConfirmation;
            },
            onFieldSubmitted: (value) {
              widget.onFieldSubmittedPasswordConfirmation?.call(value);
            },
            maxLength: widget.maxLengthPassword,
            obscuringCharacter: widget.obscuringCharacterPasswordConfirmation!,
            obscureText: widget.obscureTextPasswordConfirmation!,
            focusNode: widget.focusNodePasswordConfirmation,
            showCursor: widget.showCursorPasswordConfirmation,
            enabled: widget.enabledPasswordConfirmation,
            cursorWidth: widget.cursorWidthPasswordConfirmation!,
            cursorHeight: widget.cursorHeightPasswordConfirmation,
            cursorColor: widget.cursorColorPasswordConfirmation,
            scrollPadding: widget.scrollPaddingPasswordConfirmation!,
          ),
        ),
      ],
    );
  }
}
