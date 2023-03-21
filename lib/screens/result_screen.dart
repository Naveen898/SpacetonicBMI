import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spacetonic_bmi/widgets/custom_button.dart';
import 'package:spacetonic_bmi/widgets/result_text.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {Key? key,
      required this.bmiResult,
      required this.resultText,
      required this.interpretation})
      : super(key: key);

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Spacetonic'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'YOUR RESULT',
              style: TextStyle(
                fontSize: 36.sp,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
            SizedBox(
              height: 26.h,
            ),
            Container(
              width: 328.w,
              height: 481.h,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(14.sp),
              ),
              child: Padding(
                padding: EdgeInsets.all(28.0.sp),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ResultText(
                      title: resultText,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    ResultText(
                      title: bmiResult,
                      fontSize: 96,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    const ResultText(
                      title: 'EXPLANATION',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    ResultText(
                      title: interpretation,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 59.h,
            ),
            CustomButton(
                title: 'BACK',
                onPressed: () {
                  Navigator.pop(context);
                })
          ],
        ),
      ),
    ));
  }
}
