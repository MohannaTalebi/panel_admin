import 'package:flutter/material.dart';

class textfield_t extends StatelessWidget {

  textfield_t({required this.label,
   this.hint,
   this.icon,
  this.controller,
  this.dispose=true,
  this.suffixIcon,
  this.prefixIcon,
    this.textInputType,
    this.validator
});

  String? label;
  String? hint;
  IconData? icon;
  TextEditingController? controller;
  bool? dispose;
  IconData? suffixIcon;
  IconData? prefixIcon;
  TextInputType? textInputType;
  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: TextFormField(
        validator: validator,
        keyboardType: textInputType,
        controller: controller,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          labelText: label,
          hintText: hint,
          prefixIcon: Icon(prefixIcon),
          suffixIcon: Icon(Icons.mode_edit_outlined),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}