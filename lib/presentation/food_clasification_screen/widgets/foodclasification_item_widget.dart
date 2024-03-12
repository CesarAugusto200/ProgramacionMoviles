import 'package:flutter/material.dart';
import 'package:moviles/widgets/custom_elevated_button.dart';
import 'package:moviles/core/app_export.dart';


class FoodclasificationItemWidget extends StatelessWidget {
  const FoodclasificationItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle30,
            height: 76.v,
            width: 336.h,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
          Text(
            " International Food".toUpperCase(),
            style: CustomTextStyles.bodyLargeOnPrimary,
          ),
          SizedBox(height: 4.v),
          Container(
            width: 275.h,
            margin: EdgeInsets.symmetric(horizontal: 30.h),
            child: Text(
              "La comida internacional abarca una variedad de platillos e ingredientes que se encuentran alrededor del mundo"
                  .toUpperCase(),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 13.v),
          CustomElevatedButton(
            width: 149.h,
            text: "Watch".toUpperCase(),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.androidSmallFourScreen);
            },
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }
}



class Foodclasification2ItemWidget extends StatelessWidget {
  const Foodclasification2ItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle30,
            height: 76.v,
            width: 336.h,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
          Text(
            " Local Food".toUpperCase(),
            style: CustomTextStyles.bodyLargeOnPrimary,
          ),
          SizedBox(height: 4.v),
          Container(
            width: 275.h,
            margin: EdgeInsets.symmetric(horizontal: 30.h),
            child: Text(
              "La comida internacional abarca una variedad de platillos e ingredientes que se encuentran alrededor del mundo"
                  .toUpperCase(),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 13.v),
          CustomElevatedButton(
            width: 149.h,
            text: "Watch".toUpperCase(),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.androidSmallFourScreen);
            },
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }
}

class Foodclasification3ItemWidget extends StatelessWidget {
  const Foodclasification3ItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle30,
            height: 76.v,
            width: 336.h,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
          Text(
            " Universal Food".toUpperCase(),
            style: CustomTextStyles.bodyLargeOnPrimary,
          ),
          SizedBox(height: 4.v),
          Container(
            width: 275.h,
            margin: EdgeInsets.symmetric(horizontal: 30.h),
            child: Text(
              "La comida internacional abarca una variedad de platillos e ingredientes que se encuentran alrededor del mundo"
                  .toUpperCase(),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 13.v),
          CustomElevatedButton(
            width: 149.h,
            text: "Watch".toUpperCase(),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.androidSmallFourScreen);
            },

          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }
}
