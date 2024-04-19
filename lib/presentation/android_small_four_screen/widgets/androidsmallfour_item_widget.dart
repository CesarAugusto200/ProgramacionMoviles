
import 'package:flutter/material.dart';
import 'package:moviles/widgets/custom_elevated_button.dart';
import 'package:moviles/core/app_export.dart';



class AndroidsmallfourItemWidget extends StatelessWidget {
  const AndroidsmallfourItemWidget({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle1,
            height: 85.v,
            width: 336.h,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            "Francia".toUpperCase(),

          ),
          SizedBox(height: 8.v),
          CustomElevatedButton(
            height: 35.v,
            width: 149.h,
            text: "Wacht".toUpperCase(),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.androidSmallFiveScreen);
            },
          ),
          SizedBox(height: 15.v),
        ],
      ),
    );
  }
}
