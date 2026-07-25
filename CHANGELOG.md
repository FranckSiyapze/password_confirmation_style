## [0.1.1] - 2024/09/27

* v0.1.1: dash indicators, floating label toggle, bug fixes, docs update

## [0.1.0] - 2026/07/25

* New: default indicators are now dash-shaped and precisely centered under each character of the password field, instead of a fixed-size row of dots/icons, so a mismatch can be traced back to an exact position.
* New: `dashWidth` / `dashHeight` properties to control the size of the default dash indicators.
* New: `floatingLabel` property — a single toggle that enables/disables the floating label animation on both fields at once.
* Improved: the default (unset) `inputDecorationPassword` / `inputDecorationPasswordConfirmation` is now a clean, theme-aware filled style (borderless, rounded corners, focus ring from the app's primary color) instead of a fixed `OutlineInputBorder`.
* Fixed: `onTapPassword`, `onTapPasswordConfirmation`, `onEditionCompletePassword` and `onEditionCompletePasswordConfirmation` were referenced but never actually invoked.
* Fixed: `isTrue` could crash on a null check if the callback wasn't provided; it's now safely optional.
* Fixed: `validatorPasswordConfirmation` was declared but never wired to the confirmation field.
* Fixed: the character comparison only recalculated when editing the confirmation field; editing the password field afterwards could leave the indicators out of sync. It now recalculates from both fields.
* Fixed: password characters were silently trimmed before comparison.
* Fixed: several nullable properties now fall back to their documented defaults instead of force-unwrapping, which could crash if explicitly passed `null`.

## [0.0.3] - 2024/09/27

* Update ReadMe.md.

## [0.0.2] - 2024/09/27

* Format your files run: dart format.

## [0.0.1] - 2024/09/27

* Initial release.