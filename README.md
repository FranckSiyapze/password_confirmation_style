# Password Confirmation Style

![License](https://img.shields.io/github/license/FranckSiyapze/password_confirmation_style?style=flat-square) ![Pub Version](https://img.shields.io/pub/v/password_confirmation_style?style=flat-square) ![GitHub stars](https://img.shields.io/github/stars/FranckSiyapze/password_confirmation_style?style=flat-square)

<img src="https://siyapze-franck.ca/password_confirmation_style_1.gif" width="250" alt="password_confirmation_style_1.gif"> <img src="https://siyapze-franck.ca/password_confirmation_style_2.gif" width="250" alt="password_confirmation_style_2.gif">

<br/>

Password Confirmation Style package helps you to validates if the password matches and can disable the login button if it doesn't.

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
#### First You have to import the file:
```dart
import 'package:password_confirmation_style/password_confirmation_style.dart';
```
#### And then just put just call the component in your class:
```dart
PasswordConfirmationStyle(
    passwordConfirmationController: _confirmPasswordController,
    passwordController: _passwordController,
    isTrue: _getComparaison,
),
```
### All Properties
/// - [passwordController]: A controller for managing the password text field.
/// - [passwordConfirmationController]: A controller for managing the confirmation password text field.
/// - [iconColorMatched]: Color for matched characters (default is Colors.green).
/// - [iconColorUnMatched]: Color for unmatched characters (default is Colors.red).
/// - [iconColorInitial]: Color before any input is entered (default is Colors.transparent).
/// - [icon]: Icon to represent each character (default is a Icons.circle).
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

<br/>
## Example Project
### You can use this [example project](https://github.com/FranckSiyapze/password_confirmation_style/tree/master/example) to see how it works.
<br>

It was inspired by :  [Assisted Password Confirmation](https://ui.lndev.me/components/assisted-password-confirmation) which is a component developed by [Leonel Ngoya](https://github.com/ln-dev7)
