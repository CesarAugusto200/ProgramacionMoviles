import 'package:moviles/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:moviles/core/app_export.dart';

class AndroidSmallOneScreen extends StatelessWidget {
  const AndroidSmallOneScreen({Key? key}) : super(key: key);

  @override

  // Esta es mi pantalla de presentacion
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 27.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 71.v),
              _buildEight(context),
              SizedBox(height: 52.v),
              CustomOutlinedButton(
                width: 202.h,
                text: "Get started",
                margin: EdgeInsets.only(left: 45.h),
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.androidSmallTwoScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEight(BuildContext context) {
    return Container(
      height: 184.v,
      width: 305.h,
      margin: EdgeInsets.only(left: 1.h),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle1,
            height: 184.v,
            width: 305.h,
            radius: BorderRadius.circular(
              20.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(
                top: 23.v,
                right: 6.h,
              ),
              child: Text(
                "THE CHEF ".toUpperCase(),
                textAlign: TextAlign.center,
                style: theme.textTheme.displayMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
