import 'package:flutter/material.dart';
import 'widgets/androidsmallfour_item_widget.dart';
import 'package:moviles/core/app_export.dart';


class AndroidSmallFourScreen extends StatelessWidget {
  const AndroidSmallFourScreen({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(11.h),
          child: Column(
            children: [
              Text(
                "international food".toUpperCase(),
                textAlign: TextAlign.center,
                style: theme.textTheme.headlineMedium,
              ),
              SizedBox(height: 5.v),
              _buildAndroidSmallFour(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAndroidSmallFour(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
              context,
              index,
              ) {
            return SizedBox(
              height: 14.v,
            );
          },
          itemCount: 3,
          itemBuilder: (context, index) {
            return AndroidsmallfourItemWidget();
          },
        ),
      ),
    );
  }
}
