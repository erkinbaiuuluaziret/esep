import 'package:esep/app/theme/colors/app_colors.dart';
import 'package:esep/app/widgets/textfield_container.dart';
import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {
  final String hintText;

  // final ValueChanged<String> onChanged;
  const RoundedTextField({
    Key? key,
    required this.hintText,
    // required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: SizedBox(
        height: 52,
        child: TextField(
          // onChanged: onChanged,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: const BorderSide(
                color: AppColors.mainColor,
                width: 2.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: const BorderSide(
                color: AppColors.mainColor,
                width: 2.0,
              ),
            ),
            filled: true,
            hintStyle: TextStyle(color: Colors.grey[500]),
            fillColor: Colors.white70,
            hintText: hintText,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
