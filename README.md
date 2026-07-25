# Password Confirmation Style

![License](https://img.shields.io/github/license/FranckSiyapze/password_confirmation_style?style=flat-square) ![Pub Version](https://img.shields.io/pub/v/password_confirmation_style?style=flat-square) ![GitHub stars](https://img.shields.io/github/stars/FranckSiyapze/password_confirmation_style?style=flat-square)

<img src="https://kevin.maliqxtechnologies.com/first_screen.png" width="250" alt="password_confirmation_style_1.gif"> <img src="https://kevin.maliqxtechnologies.com/second_screen.png" width="250" alt="password_confirmation_style_2.gif">

<br/>

Password Confirmation Style package helps you validate that a password and its confirmation match, character by character, and lets you disable a login/submit button until they do. Out of the box it ships with a clean, theme-aware look: filled borderless fields and a row of small dash indicators precisely aligned under each character of the password field.

## How to use
### 1- Add it to your package's pubspec.yaml file:

```yml
dependencies:
  password_confirmation_style: <latest>
```
### 2- Install it
#### Install packages from the command line:
```sh
flutter pub get
```

### 3- Usage
#### First you have to import the file:
```dart
import 'package:password_confirmation_style/password_confirmation_style.dart';
```
#### And then just call the component in your class:
```dart
@override
Widget build(BuildContext context) {
  return Column(
    children: [
      PasswordConfirmationStyle(
        passwordConfirmationController: _confirmPasswordController,
        passwordController: _passwordController,
        isTrue: _getComparaison,
      ),
    ],
  );
}
```
That's enough to get the default look: two filled fields and a row of dashes under the password field that turn green when a character matches and red when it doesn't.

#### Common tweak — fixed (non-floating) labels
By default the "Password" / "Confirm password" labels float above the field once focused or filled (Material's usual behavior). To keep them fixed in place instead, so they simply fade out once you start typing:
```dart
final passwordField = PasswordConfirmationStyle(
  passwordConfirmationController: _confirmPasswordController,
  passwordController: _passwordController,
  isTrue: _getComparaison,
  floatingLabel: false,
);
```

### All Properties
* [passwordController]: A controller for managing the password text field.
* [passwordConfirmationController]: A controller for managing the confirmation password text field.
* [iconColorMatched]: Color for matched characters (default is an emerald green, `Color(0xFF2ECC71)`).
* [iconColorUnMatched]: Color for unmatched characters (default is a soft red, `Color(0xFFE74C3C)`).
* [iconColorInitial]: Color before any comparison exists (default is `Colors.transparent`).
* [icon]: Optional custom icon for each indicator. Leave it `null` (the default) to use the built-in dash shape, sized via `dashWidth`/`dashHeight` instead of an icon glyph.
* [iconSize]: Size of each indicator, only used when a custom `icon` is provided (default is 8.0). Ignored in the default dash mode.
* [iconPaddingVertical]: Vertical offset between the password field and the indicator row (default is 2.0).
* [iconPaddingHorizontal]: Horizontal gap subtracted from each character's measured width when sizing its dash, controlling the empty space between adjacent dashes (default is 3.0). Only applies in the default dash mode.
* [dashWidth]: Maximum width of each dash-style indicator, used when `icon` is not set (default is 14.0). Each dash is centered under its corresponding character and shrinks to fit that character's width when it's narrower, so a dash never looks wider than the digit it represents.
* [dashHeight]: Height (thickness) of each dash-style indicator, used when `icon` is not set (default is 3.0).
* [floatingLabel]: Whether the field labels float above the field once focused/filled (default is `true`). Set to `false` to keep the label fixed in place instead. Applies to **both** fields at once.
* [isTrue]: Callback function that returns a boolean indicating if the passwords match.
* [stylePassword]: Style for the password text field. Also used to measure character widths so the dashes line up with what's actually rendered.
* [stylePasswordConfirmation]: Style for the confirmation text field.
* [inputDecorationPassword]: Decoration for the password field. Leave it `null` to use the built-in, theme-aware default (filled, borderless, rounded corners, focus ring picked up from your app's primary color).
* [inputDecorationPasswordConfirmation]: Decoration for the confirmation field. Same default behavior as above.
* [validatorPassword]: Validator for password field.
* [validatorPasswordConfirmation]: Validator for confirmation field.
* [onChangedPassword]: Callback for password change.
* [onChangedPasswordConfirmation]: Callback for confirmation change.
* [onTapPassword]: Callback for password field tap.
* [onTapPasswordConfirmation]: Callback for confirmation field tap.
* [onEditionCompletePassword]: Callback for password edit completion.
* [onEditionCompletePasswordConfirmation]: Callback for confirmation edit completion.
* [onFieldSubmittedPassword]: Callback for password submission.
* [onFieldSubmittedPasswordConfirmation]: Callback for confirmation submission.
* [maxLengthPassword]: Max length for password input.
* [obscuringCharacterPassword]: Character used for obscuring password.
* [obscuringCharacterPasswordConfirmation]: Character used for obscuring confirmation.
* [obscureTextPassword]: Whether to obscure password text (default is `false`).
* [obscureTextPasswordConfirmation]: Whether to obscure confirmation text (default is `false`).
* [focusNodePassword]: Focus node for password field.
* [focusNodePasswordConfirmation]: Focus node for confirmation field.
* [showCursorPassword]: Whether to show cursor in password field.
* [showCursorPasswordConfirmation]: Whether to show cursor in confirmation field.
* [enabledPassword]: Whether password field is enabled.
* [enabledPasswordConfirmation]: Whether confirmation field is enabled.
* [cursorWidthPassword]: Width of the cursor in password field.
* [cursorWidthPasswordConfirmation]: Width of the cursor in confirmation field.
* [cursorHeightPassword]: Height of the cursor in password field.
* [cursorHeightPasswordConfirmation]: Height of the cursor in confirmation field.
* [cursorColorPassword]: Color of the cursor in password field.
* [cursorColorPasswordConfirmation]: Color of the cursor in confirmation field.
* [scrollPaddingPassword]: Scroll padding for password field.
* [scrollPaddingPasswordConfirmation]: Scroll padding for confirmation field.

### Example Project
### You can use this [example project](https://github.com/FranckSiyapze/password_confirmation_style/tree/master/example) to see how it works.
<br>

It was inspired by: [Assisted Password Confirmation](https://ui.lndev.me/components/assisted-password-confirmation) which is a component developed by [Leonel Ngoya](https://github.com/ln-dev7)