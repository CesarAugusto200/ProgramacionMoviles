import 'package:flutter/material.dart';
import 'package:moviles/core/app_export.dart';
import 'package:moviles/widgets/custom_elevated_button.dart';

class AndroidSmallFiveScreen extends StatelessWidget {
  const AndroidSmallFiveScreen({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 10.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 14.v),
                    padding: EdgeInsets.symmetric(horizontal: 14.h),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 400.v,
                          width: 330.h,
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "international food".toUpperCase(),
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.headline6,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: 91.h,
                                  margin: EdgeInsets.only(
                                    left: 35.h,
                                    top: 34.v,
                                  ),
                                  child: Text(
                                    "Croque Monsieur".toUpperCase(),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.subtitle1,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 174.h,
                                    top: 30.v,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          width: 123.h,
                                          margin: EdgeInsets.only(
                                            left: 21.h,
                                            right: 10.h,
                                          ),
                                          child: Text(
                                            "Bœuf bourguignon".toUpperCase(),
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: theme.textTheme.subtitle1!
                                                .copyWith(
                                              decoration:
                                              TextDecoration.underline,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 18.v),
                                      SizedBox(
                                        height: 252.v,
                                        width: 156.h,
                                        child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                padding: EdgeInsets.all(11.h),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.black),
                                                  borderRadius:
                                                  BorderRadius.circular(30),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                  MainAxisSize.min,
                                                  children: [
                                                    SizedBox(height: 79.v),
                                                    Text(
                                                      "difficulty"
                                                          .toUpperCase(),
                                                      style: theme
                                                          .textTheme.subtitle1,
                                                    ),
                                                    Text(
                                                      "Dificil".toUpperCase(),
                                                      style: theme
                                                          .textTheme.bodyText2,
                                                    ),
                                                    SizedBox(height: 13.v),
                                                    Divider(
                                                      color: Colors.red,
                                                      indent: 5.h,
                                                    ),
                                                    SizedBox(height: 23.v),
                                                    _buildLookRecipe(context),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath: "assets/images/img_image_2.png",
                                              height: 128.adaptSize,
                                              width: 128.adaptSize,
                                              radius: BorderRadius.circular(
                                                64.h,
                                              ),
                                              alignment: Alignment.topCenter,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    right: 30.h,
                                    bottom: 3.v,
                                  ),
                                  child: Text(
                                    "Pain perdu".toUpperCase(),
                                    style: theme.textTheme.subtitle1,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 174.h),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        height: 252.v,
                                        width: 156.h,
                                        child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                padding: EdgeInsets.all(11.h),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.black),
                                                  borderRadius:
                                                  BorderRadius.circular(30),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                  MainAxisSize.min,
                                                  children: [
                                                    SizedBox(height: 79.v),
                                                    Text(
                                                      "difficulty"
                                                          .toUpperCase(),
                                                      style: theme
                                                          .textTheme.subtitle1,
                                                    ),
                                                    Text(
                                                      "Facil".toUpperCase(),
                                                      style: theme
                                                          .textTheme.bodyText2,
                                                    ),
                                                    SizedBox(height: 13.v),
                                                    Divider(
                                                      indent: 2.h,
                                                      endIndent: 3.h,
                                                    ),
                                                    SizedBox(height: 23.v),
                                                    _buildLookRecipe1(context),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath: "assets/images/img_image_2.png",
                                              height: 128.adaptSize,
                                              width: 128.adaptSize,
                                              radius: BorderRadius.circular(
                                                64.h,
                                              ),
                                              alignment: Alignment.topCenter,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 8.v),
                                      SizedBox(
                                        width: 72.h,
                                        child: Text(
                                          "Jambon\nbeurre".toUpperCase(),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.subtitle1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 6.v),
                        _buildFortyEight(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLookRecipe(BuildContext context) {
    return CustomElevatedButton(
      text: "look recipe".toUpperCase(),
    );
  }

  /// Section Widget
  Widget _buildLookRecipe1(BuildContext context) {
    return CustomElevatedButton(
      text: "look recipe".toUpperCase(),
    );
  }

  /// Section Widget
  Widget _buildLookRecipe2(BuildContext context) {
    return CustomElevatedButton(
      width: 132.h,
      text: "look recipe".toUpperCase(),
    );
  }

  /// Section Widget
  Widget _buildLookRecipe3(BuildContext context) {
    return CustomElevatedButton(
      width: 132.h,
      text: "look recipe".toUpperCase(),
    );
  }

  /// Section Widget
  Widget _buildFortyEight(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 252.v,
            width: 156.h,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.h,
                      vertical: 14.v,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 75.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text(
                              "difficulty".toUpperCase(),
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                          ),
                        ),
                        Text(
                          "Facil".toUpperCase(),
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        SizedBox(height: 13.v),
                        SizedBox(
                          width: 129.h,
                          child: Divider(),
                        ),
                        SizedBox(height: 21.v),
                        _buildLookRecipe2(context),
                      ],
                    ),
                  ),
                ),
                _buildTwenty(context),
              ],
            ),
          ),
          SizedBox(
            height: 252.v,
            width: 156.h,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.h,
                      vertical: 8.v,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: 83.v),
                        Padding(
                          padding: EdgeInsets.only(right: 15.h),
                          child: Text(
                            "difficulty".toUpperCase(),
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                        SizedBox(height: 2.v),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Intermedio".toUpperCase(),
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                        SizedBox(height: 14.v),
                        SizedBox(
                          width: 129.h,
                          child: Divider(
                            color: Theme.of(context).colorScheme.error,
                          ),
                        ),
                        SizedBox(height: 21.v),
                        _buildLookRecipe3(context),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 128.adaptSize,
                    width: 128.adaptSize,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(64.h),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: "assets/images/img_image_2.png",
                          height: 128.adaptSize,
                          width: 128.adaptSize,
                          radius: BorderRadius.circular(64.h),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 128.adaptSize,
                            width: 128.adaptSize,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: "assets/images/img_image_2.png",
                                  height: 128.adaptSize,
                                  width: 128.adaptSize,
                                  radius: BorderRadius.circular(64.h),
                                  alignment: Alignment.center,
                                ),
                                _buildTwenty(context),
                              ],
                            ),
                          ),
                        ),
                      ],
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

  /// Common widget
  Widget _buildTwenty(BuildContext context) {
    return SizedBox(
      height: 128.adaptSize,
      width: 128.adaptSize,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: "assets/images/img_image_2.png",
            height: 128.adaptSize,
            width: 128.adaptSize,
            radius: BorderRadius.circular(64.h),
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: "assets/images/img_image_2.png",
            height: 128.adaptSize,
            width: 128.adaptSize,
            radius: BorderRadius.circular(64.h),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
