import 'package:flutter/material.dart';

class CCInputDecoration extends InputDecoration {
  const CCInputDecoration({
    super.icon,
    super.iconColor,
    super.label,
    super.labelText,
    super.labelStyle,
    super.floatingLabelStyle,
    super.helperText,
    super.helperStyle,
    super.helperMaxLines,
    super.hintText,
    super.hintStyle,
    super.hintTextDirection,
    super.hintMaxLines,
    super.error,
    super.errorText,
    super.errorStyle,
    super.floatingLabelBehavior,
    super.floatingLabelAlignment,
    super.isCollapsed,
    super.isDense,
    super.contentPadding,
    super.prefixIcon,
    super.prefixIconConstraints,
    super.prefix,
    super.prefixText,
    super.prefixStyle,
    super.prefixIconColor,
    super.suffixIcon,
    super.suffix,
    super.suffixText,
    super.suffixStyle,
    super.suffixIconColor,
    super.suffixIconConstraints,
    super.counter,
    super.counterText,
    super.counterStyle,
    // super.filled,
    // super.fillColor,
    super.focusColor,
    super.hoverColor,
    super.enabled,
    super.semanticCounterText,
    super.alignLabelWithHint,
    super.constraints,
  }) : super(
          border: const OutlineInputBorder(),
          errorMaxLines: 3,
          filled: true,
          fillColor: const Color.fromARGB(18, 0, 0, 0),
        );
}
