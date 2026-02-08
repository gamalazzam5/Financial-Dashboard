import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  OutlineInputBorder _border(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: color,
        width: 1,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      style: const TextStyle(
        fontSize: 16,
        color: Colors.black,
      ),
      decoration: InputDecoration(
        hintText: '0',
        hintStyle: const TextStyle(
          color: Color(0xFFBDBDBD),
        ),


        suffixIcon: const Padding(
          padding: EdgeInsets.only(right: 12),
          child: Text(
            '\$',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xFFBDBDBD),
            ),
          ),
        ),
        suffixIconConstraints: const BoxConstraints(
          minWidth: 0,
          minHeight: 0,
        ),

        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),

        enabledBorder: _border(const Color(0xFF1A73E8)),
        focusedBorder: _border(const Color(0xFF1A73E8)),
        disabledBorder: _border(const Color(0xFF1A73E8)),
        errorBorder: _border(const Color(0xFF1A73E8)),
        focusedErrorBorder: _border(const Color(0xFF1A73E8)),

        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}
