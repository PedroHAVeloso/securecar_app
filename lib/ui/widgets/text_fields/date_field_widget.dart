import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:securecar_app/ui/utils/app_theme.dart';

/// Campo de data padrão do aplicativo.
// TODO: Adicionar gerenciamento de estado para o widget.
class DateFieldWidget extends StatefulWidget {
  /// Crie um campo de texto.
  const DateFieldWidget({
    required this.hintText,
    this.fieldController,
    super.key,
    this.validator,
  });

  /// Valide o valor informado pelo usuário.
  final String? Function(String?)? validator;

  /// Controlador do campo de texto.
  final TextEditingController? fieldController;

  /// Texto exibido no campo.
  final String hintText;

  @override
  State<DateFieldWidget> createState() => _DateFieldWidgetState();
}

class _DateFieldWidgetState extends State<DateFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        onTap: () async {
          final pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1930),
            lastDate: DateTime.now(),
            builder: (context, child) {
              return Theme(
                data: ThemeData(
                  colorScheme: AppTheme.lightTheme.colorScheme,
                  dialogTheme: const DialogTheme(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                  ),
                ),
                child: child!,
              );
            },
          );

          if (pickedDate != null) {
            setState(
              () => widget.fieldController!.text =
                  DateFormat('dd/MM/yyyy').format(pickedDate),
            );
          }
        },
        keyboardType: TextInputType.none,
        validator: widget.validator,
        controller: widget.fieldController,
        decoration: InputDecoration(
          hintText: widget.hintText,
        ),
      ),
    );
  }
}
