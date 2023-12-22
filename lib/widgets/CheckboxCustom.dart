import 'package:flutter/material.dart';

class CheckboxCustom extends FormField<bool> {
  CheckboxCustom({
    Key? key,
    required bool initialValue,
    required FormFieldSetter<bool> onSaved,
    required FormFieldValidator<bool> validator,
    this.activeColor,
    this.checkColor,
    this.errorColor = Colors.red,
    this.defaultBorderColor = Colors.transparent,
    this.borderRadius = 4.0,
  }) : super(
    key: key,
    initialValue: initialValue,
    onSaved: onSaved,
    validator: validator,
    builder: (FormFieldState<bool> state) {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: state.hasError ? errorColor : defaultBorderColor,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Checkbox(
          value: state.value,
          onChanged: state.didChange,
          activeColor: activeColor,
          checkColor: checkColor,
        ),
      );
    },
  );

  final Color? activeColor;
  final Color? checkColor;
  final Color errorColor;
  final Color defaultBorderColor;
  final double borderRadius;
}
