import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BmiButton extends StatelessWidget {
  const BmiButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0.sp),
      ),
      fillColor: Colors.white,
      constraints: BoxConstraints.tightFor(
        height: 46.0.h,
        width: 46.0.w,
      ),
      elevation: 6,
      child: Icon(
        icon,
        size: 30.sp,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
