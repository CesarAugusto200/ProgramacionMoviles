import 'package:flutter/material.dart';
import 'package:moviles/core/app_export.dart';


class AndroidSmallSixScreen extends StatelessWidget {
  const AndroidSmallSixScreen({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle1,
                  height: 163.v,
                  width: 360.h,
                  radius: BorderRadius.circular(
                    20.h,
                  ),
                ),
                SizedBox(height: 8.v),
                _buildThirtyFive(context),
                SizedBox(height: 17.v),
                Container(
                  margin: EdgeInsets.only(
                    left: 10.h,
                    right: 14.h,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 7.h,
                    vertical: 5.v,
                  ),
                  decoration: AppDecoration.outlinePrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildFortySeven(context),
                      SizedBox(height: 8.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 12.h,
                          right: 34.h,
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 16.v,
                              width: 17.h,
                              margin: EdgeInsets.only(top: 5.v),
                              decoration: BoxDecoration(
                                color: appTheme.red500,
                                borderRadius: BorderRadius.circular(
                                  8.h,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text(
                                "4 lonchas de jamón cocido".toUpperCase(),
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 12.h,
                          right: 72.h,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 16.v,
                              width: 17.h,
                              margin: EdgeInsets.only(bottom: 5.v),
                              decoration: BoxDecoration(
                                color: appTheme.red500,
                                borderRadius: BorderRadius.circular(
                                  8.h,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 6.h),
                              child: Text(
                                "100 g de queso rallado".toUpperCase(),
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12.v),
                      Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: Row(
                          children: [
                            Container(
                              height: 16.v,
                              width: 17.h,
                              margin: EdgeInsets.only(
                                top: 3.v,
                                bottom: 2.v,
                              ),
                              decoration: BoxDecoration(
                                color: appTheme.red500,
                                borderRadius: BorderRadius.circular(
                                  8.h,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text(
                                "Mostaza al gusto".toUpperCase(),
                                textAlign: TextAlign.center,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 11.v),
                      _buildFortyNine(context),
                      SizedBox(height: 13.v),
                      Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 16.v,
                              width: 17.h,
                              margin: EdgeInsets.only(bottom: 5.v),
                              decoration: BoxDecoration(
                                color: appTheme.red500,
                                borderRadius: BorderRadius.circular(
                                  8.h,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text(
                                "20 g de mantequilla".toUpperCase(),
                                textAlign: TextAlign.center,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15.v),
                      Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: Row(
                          children: [
                            Container(
                              height: 16.v,
                              width: 17.h,
                              margin: EdgeInsets.only(top: 6.v),
                              decoration: BoxDecoration(
                                color: appTheme.red500,
                                borderRadius: BorderRadius.circular(
                                  8.h,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "1 diente de ajo".toUpperCase(),
                                textAlign: TextAlign.center,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: Row(
                          children: [
                            Container(
                              height: 16.v,
                              width: 17.h,
                              margin: EdgeInsets.only(
                                top: 3.v,
                                bottom: 2.v,
                              ),
                              decoration: BoxDecoration(
                                color: appTheme.red500,
                                borderRadius: BorderRadius.circular(
                                  8.h,
                                ),
                              ),
                            ),
                            Text(
                              "1 hoja de laurel".toUpperCase(),
                              textAlign: TextAlign.center,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 19.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 11.h,
                          right: 66.h,
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 16.v,
                              width: 17.h,
                              margin: EdgeInsets.only(top: 6.v),
                              decoration: BoxDecoration(
                                color: appTheme.red500,
                                borderRadius: BorderRadius.circular(
                                  8.h,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Text(
                                "1 pizca de nuez moscada".toUpperCase(),
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 11.h,
                          right: 50.h,
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 16.v,
                              width: 17.h,
                              margin: EdgeInsets.only(
                                top: 3.v,
                                bottom: 2.v,
                              ),
                              decoration: BoxDecoration(
                                color: appTheme.red500,
                                borderRadius: BorderRadius.circular(
                                  8.h,
                                ),
                              ),
                            ),
                            Text(
                              "1 cucharadita de mostaza".toUpperCase(),
                              style: theme.textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Padding(
                        padding: EdgeInsets.only(left: 28.h),
                        child: Text(
                          "Sal al gusto".toUpperCase(),
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      SizedBox(height: 10.v),
                    ],
                  ),
                ),
                SizedBox(height: 11.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtyFive(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 3.h,
        right: 4.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 41.v,
            width: 147.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 41.v,
                    width: 147.h,
                    decoration: BoxDecoration(
                      color: appTheme.red500,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(21.h),
                        topRight: Radius.circular(20.h),
                        bottomLeft: Radius.circular(21.h),
                        bottomRight: Radius.circular(20.h),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: theme.colorScheme.primary,
                          spreadRadius: 2.h,
                          blurRadius: 2.h,
                          offset: Offset(
                            0,
                            4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 37.h,
                      right: 37.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Recipes".toUpperCase(),
                          textAlign: TextAlign.center,

                        ),
                        SizedBox(height: 5.v),
                        SizedBox(
                          width: 71.h,
                          child: Divider(
                            color: theme.colorScheme.onError,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 41.v,
            width: 147.h,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 41.v,
                    width: 147.h,
                    decoration: BoxDecoration(
                      color: appTheme.red500,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(21.h),
                        topRight: Radius.circular(20.h),
                        bottomLeft: Radius.circular(21.h),
                        bottomRight: Radius.circular(20.h),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: theme.colorScheme.primary,
                          spreadRadius: 2.h,
                          blurRadius: 2.h,
                          offset: Offset(
                            0,
                            4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 8.v),
                    child: Text(
                      "PreparatioN".toUpperCase(),
                      textAlign: TextAlign.center,

                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFortySeven(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 11.h,
          right: 17.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 16.v,
              width: 17.h,
              margin: EdgeInsets.only(
                top: 2.v,
                bottom: 3.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.red500,
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Text(
                "4 rebanadas de pan de molde".toUpperCase(),
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyNine(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 11.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 16.v,
            width: 17.h,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 3.v,
            ),
            decoration: BoxDecoration(
              color: appTheme.red500,
              borderRadius: BorderRadius.circular(
                8.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Text(
              "20 g de harina de trigo normal".toUpperCase(),
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}