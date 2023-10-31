import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.yellowColor,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: "Search",
        hintStyle: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 14.sp,
          color: Colors.white.withOpacity(
            0.5,
          ),
        ),
        prefixIcon: Icon(
          Icons.search,
          color: Colors.white,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
        filled: true,
        fillColor: Color(0xFF514F4F),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(
            color: Colors.white,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(
            color: Colors.white,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(
            color: AppColors.yellowColor,
            width: 1,
          ),
        ),
      ),
    );
  }
}
