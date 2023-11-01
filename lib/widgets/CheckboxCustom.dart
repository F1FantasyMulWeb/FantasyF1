import 'package:flutter/material.dart';

class CheckboxCustom extends FormField<bool> {
  CheckboxCustom({
    Key? key,
    required bool initialValue,
    required FormFieldSetter<bool> onSaved,
    required FormFieldValidator<bool> validator,
  }) : super(
    key: key,
    initialValue: initialValue,
    onSaved: onSaved,
    validator: validator,
    builder: (FormFieldState<bool> state) {
      return Theme(
        data: Theme.of(state.context).copyWith(
          unselectedWidgetColor: state.hasError ? Colors.red : Colors.grey,
        ),
        child: Checkbox(
          value: state.value,
          onChanged: state.didChange,
        ),
      );
    },
  );
}
