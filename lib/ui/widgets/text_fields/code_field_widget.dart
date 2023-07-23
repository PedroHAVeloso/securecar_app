import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

// TODO: Remover widget e criar próprio.
class CodeFieldWidget extends StatelessWidget {
  const CodeFieldWidget({
    this.fieldController,
    super.key,
  });

  final TextEditingController? fieldController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240,
      height: 85,
      child: PinCodeTextField(
        controller: fieldController,
        errorTextDirection: TextDirection.rtl,
        appContext: context,
        length: 4,
        onChanged: (value) {},
        validator: (value) {
          if (value!.length < 4) {
            return 'Código inválido';
          }
          return null;
        },
        keyboardType: TextInputType.number,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(20),
          inactiveColor: Theme.of(context).colorScheme.secondary,
          activeColor: Theme.of(context).colorScheme.secondary,
          selectedColor: Theme.of(context).colorScheme.primary,
          errorBorderColor: Theme.of(context).colorScheme.error,
          borderWidth: 4,
          activeBorderWidth: 4,
          disabledBorderWidth: 4,
          selectedBorderWidth: 4,
          inactiveBorderWidth: 4,
          errorBorderWidth: 4,
          fieldHeight: 65,
          fieldWidth: 55,
          activeFillColor: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
