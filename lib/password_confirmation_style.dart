library password_confirmation_style;

import 'package:flutter/material.dart';

/// A widget that provides password confirmation functionality with visual feedback.
///
/// Displays a password field and a confirmation field, comparing them
/// character by character in real time. Each comparison is shown as a small
/// dash centered directly beneath the corresponding character of the
/// password field, so mismatches can be traced back to an exact position.
///
/// The [PasswordConfirmationStyle] widget exposes a large set of
/// customization options (styles, decorations, callbacks) for both fields,
/// while shipping with a clean, theme-aware default look out of the box.
class PasswordConfirmationStyle extends StatefulWidget {
  /// Controller for the password field.
  final TextEditingController passwordController;

  /// Controller for the confirmation field.
  final TextEditingController passwordConfirmationController;

  /// Color for matched characters (default: emerald green).
  final Color? iconColorMatched;

  /// Color for unmatched characters (default: soft red).
  final Color? iconColorUnMatched;

  /// Color before any comparison exists (default: transparent).
  final Color? iconColorInitial;

  /// Optional custom icon for each indicator. Leave null (the default) to
  /// use the built-in dash shape, precisely centered under each character
  /// and sized via [dashWidth]/[dashHeight].
  final IconData? icon;

  /// Size of each indicator ONLY when a custom [icon] is provided
  /// (default: 8.0). Ignored in the default dash mode.
  final double? iconSize;

  /// Vertical offset between the password field and the indicator row
  /// (default: 2.0).
  final double? iconPaddingVertical;

  /// Horizontal gap subtracted from each character's measured width when
  /// sizing its dash, controlling the empty space between adjacent dashes
  /// (default: 3.0). Only applies in the default dash mode.
  final double? iconPaddingHorizontal;

  /// Maximum width of each dash-style indicator, used when [icon] is not
  /// set (default: 14.0). Each dash is centered under its corresponding
  /// character and shrinks to fit that character's width when it is
  /// narrower than this value, so a dash never looks wider than the digit
  /// it represents.
  final double? dashWidth;

  /// Height (thickness) of each dash-style indicator, used when [icon] is
  /// not set (default: 3.0).
  final double? dashHeight;

  /// Whether the "Password" / "Confirm password" labels float above the
  /// field once it's focused or filled (Material's usual behavior). Set to
  /// `false` to keep the label fixed in place instead — it then behaves
  /// like a placeholder that fades out once you start typing, and never
  /// jumps above the field. Applies to BOTH fields at once (default: true).
  final bool? floatingLabel;

  /// Called whenever the match state changes, with `true` if both fields
  /// currently match exactly (same length, same characters).
  final Function(bool)? isTrue;

  /// Style for the password text field. Also used to measure character
  /// widths so the dashes line up with what's actually rendered.
  final TextStyle? stylePassword;

  /// Style for the confirmation text field.
  final TextStyle? stylePasswordConfirmation;

  /// Decoration for the password field. Leave null to use the built-in,
  /// theme-aware default (filled, borderless, rounded corners).
  final InputDecoration? inputDecorationPassword;

  /// Decoration for the confirmation field. Leave null to use the built-in,
  /// theme-aware default.
  final InputDecoration? inputDecorationPasswordConfirmation;

  /// Validator for password field.
  final String? Function(String?)? validatorPassword;

  /// Validator for confirmation field. Now actually wired up.
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

  /// Creates a [PasswordConfirmationStyle] widget.
  ///
  /// [passwordController] and [passwordConfirmationController] are required;
  /// every other parameter is optional and falls back to a clean,
  /// theme-aware default (see the field docs above for details on each).
  const PasswordConfirmationStyle({
    super.key,
    required this.passwordController,
    required this.passwordConfirmationController,
    this.iconColorMatched = const Color(0xFF2ECC71),
    this.iconColorUnMatched = const Color(0xFFE74C3C),
    this.iconColorInitial = Colors.transparent,
    // null by default -> renders the clean dash shape instead of an icon.
    this.icon,
    this.iconSize = 8.0,
    this.iconPaddingVertical = 2.0,
    this.iconPaddingHorizontal = 3.0,
    this.dashWidth = 14.0,
    this.dashHeight = 3.0,
    this.floatingLabel = true,
    this.isTrue,
    this.stylePassword,
    this.stylePasswordConfirmation,
    // Left null on purpose: the clean default decoration is computed at
    // build time from the surrounding Theme (see _defaultDecoration).
    this.inputDecorationPassword,
    this.inputDecorationPasswordConfirmation,
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

/// State for [PasswordConfirmationStyle]. Tracks the live character-by-character
/// comparison between the two fields and drives the indicator row.
class PasswordConfirmationStyleState
    extends State<PasswordConfirmationStyle> {
  List<bool> _charComparisonResults = [];
  int _numberBullet = 0;

  @override
  void initState() {
    super.initState();
    // Handles the case where the controller already has text when the
    // widget is first built (e.g. restoring a draft).
    _numberBullet = widget.passwordController.text.length;
  }

  /// Recomputes the character-by-character comparison and notifies
  /// [PasswordConfirmationStyle.isTrue]. Called from BOTH fields' onChanged
  /// so the indicators stay in sync no matter which field the user edits.
  void _recomputeComparison() {
    final String password = widget.passwordController.text;
    final String confirmation = widget.passwordConfirmationController.text;

    final int minLength =
    password.length < confirmation.length ? password.length : confirmation.length;

    final List<bool> results = List<bool>.generate(
      minLength,
          (i) => password[i] == confirmation[i],
    );

    setState(() {
      _charComparisonResults = results;
    });

    final bool lengthsMatch = confirmation.length == password.length;
    widget.isTrue?.call(lengthsMatch && _allValuesAreSame(results));
  }

  bool _allValuesAreSame(List<bool> comparisonResults) {
    if (comparisonResults.isEmpty) return false;
    return comparisonResults.every((v) => v);
  }

  /// Clean, theme-aware default look: filled, borderless, rounded corners,
  /// focus ring picked up from the app's own primary color so the widget
  /// blends into whatever theme it's dropped into.
  InputDecoration _defaultDecoration(BuildContext context, String label) {
    final ThemeData theme = Theme.of(context);
    final bool isDark = theme.brightness == Brightness.dark;
    return InputDecoration(
      labelText: label,
      filled: true,
      // withValues() requires Flutter 3.27+; using withOpacity() here keeps
      // the package compatible with older Flutter SDKs. Safe to switch to
      // withValues(alpha: ...) once your minimum supported Flutter is 3.27+.
      fillColor: isDark
          ? Colors.white.withOpacity(0.06) // ignore: deprecated_member_use
          : Colors.black.withOpacity(0.035), // ignore: deprecated_member_use
      counterText: '',
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(color: theme.colorScheme.primary, width: 1.4),
      ),
      labelStyle: TextStyle(color: theme.hintColor, fontSize: 14),
    );
  }

  /// Resolves the decoration to use for a field: [custom] if provided,
  /// otherwise the built-in default — then applies [floatingLabel] on top
  /// either way, so the toggle works globally regardless of customization.
  InputDecoration _resolveDecoration(
      BuildContext context,
      InputDecoration? custom,
      String label,
      ) {
    final InputDecoration base = custom ?? _defaultDecoration(context, label);
    final FloatingLabelBehavior behavior = (widget.floatingLabel ?? true)
        ? FloatingLabelBehavior.auto
        : FloatingLabelBehavior.never;
    return base.copyWith(floatingLabelBehavior: behavior);
  }

  /// Measures the rendered width of [text] using [style], the same way the
  /// underlying [TextField] would lay it out (same font, letter spacing).
  double _measureTextWidth(String text, TextStyle style) {
    final TextPainter painter = TextPainter(
      text: TextSpan(text: text, style: style),
      textDirection: TextDirection.ltr,
    )..layout();
    return painter.width;
  }

  /// Returns cumulative pixel widths: widths[i] is the x-offset where
  /// character i starts, widths[text.length] is the total text width.
  /// Measuring growing substrings (rather than summing individual glyph
  /// widths) keeps letter-spacing/kerning consistent with the real field.
  List<double> _prefixWidths(String text, TextStyle style) {
    final List<double> widths = <double>[0.0];
    for (int i = 1; i <= text.length; i++) {
      widths.add(_measureTextWidth(text.substring(0, i), style));
    }
    return widths;
  }

  /// Builds one indicator, positioned and sized to sit directly under its
  /// corresponding character.
  Widget _buildIndicatorAt({
    required double centerX,
    required double cellWidth,
    required Color bgColor,
    required double top,
    required double gap,
  }) {
    if (widget.icon != null) {
      final double size = widget.iconSize ?? 8.0;
      return Positioned(
        left: centerX - size / 2,
        top: top,
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 150),
          child: Icon(
            widget.icon,
            key: ValueKey<Color>(bgColor),
            size: size,
            color: bgColor,
          ),
        ),
      );
    }

    final double maxWidth = widget.dashWidth ?? 14.0;
    final double h = widget.dashHeight ?? 3.0;
    double w = cellWidth - gap;
    if (w > maxWidth) w = maxWidth;
    if (w < 3.0) w = 3.0;

    return Positioned(
      left: centerX - w / 2,
      top: top,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeOut,
        width: w,
        height: h,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(h / 2),
        ),
      ),
    );
  }

  /// Builds the full indicator row, with each dash centered under its
  /// matching character in the password field above.
  Widget _buildIndicatorsRow(BuildContext context) {
    final String password = widget.passwordController.text;
    if (password.isEmpty) return const SizedBox.shrink();

    final bool obscure = widget.obscureTextPassword ?? false;
    final String obscuringChar = widget.obscuringCharacterPassword ?? '•';
    final String display = obscure ? obscuringChar * password.length : password;

    final TextStyle style =
        widget.stylePassword ?? const TextStyle(letterSpacing: 1.2, fontSize: 16);

    // Mirrors the horizontal inset the password TextFormField actually uses
    // (its own outer Padding + the decoration's contentPadding), so dashes
    // line up with the real text position.
    final EdgeInsetsGeometry? rawContentPadding =
        widget.inputDecorationPassword?.contentPadding;
    final EdgeInsets contentPadding = rawContentPadding is EdgeInsets
        ? rawContentPadding
        : const EdgeInsets.symmetric(horizontal: 16, vertical: 14);
    const double fieldOuterPadding = 4.0;
    final double leftInset = fieldOuterPadding + contentPadding.left;

    final List<double> prefixWidths = _prefixWidths(display, style);
    final double totalTextWidth = prefixWidths.last;

    final double gap = widget.iconPaddingHorizontal ?? 3.0;
    final double vPad = widget.iconPaddingVertical ?? 2.0;
    final double indicatorHeight =
    widget.icon != null ? (widget.iconSize ?? 8.0) : (widget.dashHeight ?? 3.0);

    final List<Widget> indicators = <Widget>[];
    for (int i = 0; i < password.length; i++) {
      final double cellWidth = prefixWidths[i + 1] - prefixWidths[i];
      final double centerX = leftInset + prefixWidths[i] + cellWidth / 2;
      final Color bgColor = i < _charComparisonResults.length
          ? (_charComparisonResults[i]
          ? (widget.iconColorMatched ?? const Color(0xFF2ECC71))
          : (widget.iconColorUnMatched ?? const Color(0xFFE74C3C)))
          : (widget.iconColorInitial ?? Colors.transparent);

      indicators.add(_buildIndicatorAt(
        centerX: centerX,
        cellWidth: cellWidth,
        bgColor: bgColor,
        top: vPad,
        gap: gap,
      ));
    }

    // Horizontal scroll = safety net if the password ever overflows the
    // field's visible width; harmless (no scrolling) for normal lengths.
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        width: leftInset + totalTextWidth + gap,
        height: indicatorHeight + vPad * 2,
        child: Stack(children: indicators),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 6.0),
          child: TextFormField(
            controller: widget.passwordController,
            style: widget.stylePassword ??
                const TextStyle(letterSpacing: 1.2, fontSize: 16),
            decoration: _resolveDecoration(
                context, widget.inputDecorationPassword, 'Password'),
            validator: widget.validatorPassword,
            onChanged: (value) {
              widget.onChangedPassword?.call(value);
              setState(() => _numberBullet = value.length);
              _recomputeComparison();
            },
            onTap: () => widget.onTapPassword?.call(),
            onEditingComplete: () => widget.onEditionCompletePassword?.call(),
            onFieldSubmitted: (value) {
              widget.onFieldSubmittedPassword?.call(value);
            },
            maxLength: widget.maxLengthPassword,
            obscuringCharacter: widget.obscuringCharacterPassword ?? '•',
            obscureText: widget.obscureTextPassword ?? false,
            focusNode: widget.focusNodePassword,
            showCursor: widget.showCursorPassword,
            enabled: widget.enabledPassword,
            cursorWidth: widget.cursorWidthPassword ?? 2.0,
            cursorHeight: widget.cursorHeightPassword,
            cursorColor: widget.cursorColorPassword,
            scrollPadding: widget.scrollPaddingPassword ?? const EdgeInsets.all(20.0),
          ),
        ),
        if (_numberBullet > 0) _buildIndicatorsRow(context),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 6.0),
          child: TextFormField(
            controller: widget.passwordConfirmationController,
            style: widget.stylePasswordConfirmation ??
                const TextStyle(letterSpacing: 1.2, fontSize: 16),
            readOnly: _numberBullet == 0,
            decoration: _resolveDecoration(context,
                widget.inputDecorationPasswordConfirmation, 'Confirm password'),
            validator: widget.validatorPasswordConfirmation == null
                ? null
                : (value) => widget.validatorPasswordConfirmation!(value ?? ''),
            onChanged: (value) {
              if (value.length > _numberBullet) {
                final String clipped = value.substring(0, _numberBullet);
                widget.passwordConfirmationController.value = TextEditingValue(
                  text: clipped,
                  selection: TextSelection.collapsed(offset: clipped.length),
                );
                value = clipped;
              }
              widget.onChangedPasswordConfirmation?.call(value);
              _recomputeComparison();
            },
            onTap: () => widget.onTapPasswordConfirmation?.call(),
            onEditingComplete: () =>
                widget.onEditionCompletePasswordConfirmation?.call(),
            onFieldSubmitted: (value) {
              widget.onFieldSubmittedPasswordConfirmation?.call(value);
            },
            maxLength: widget.maxLengthPassword,
            obscuringCharacter:
            widget.obscuringCharacterPasswordConfirmation ?? '•',
            obscureText: widget.obscureTextPasswordConfirmation ?? false,
            focusNode: widget.focusNodePasswordConfirmation,
            showCursor: widget.showCursorPasswordConfirmation,
            enabled: widget.enabledPasswordConfirmation,
            cursorWidth: widget.cursorWidthPasswordConfirmation ?? 2.0,
            cursorHeight: widget.cursorHeightPasswordConfirmation,
            cursorColor: widget.cursorColorPasswordConfirmation,
            scrollPadding:
            widget.scrollPaddingPasswordConfirmation ?? const EdgeInsets.all(20.0),
          ),
        ),
      ],
    );
  }
}