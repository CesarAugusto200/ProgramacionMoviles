import 'package:flutter/material.dart';
import 'package:moviles/core/app_export.dart';
import 'package:moviles/presentation/android_small_seven_page/android_small_seven_page.dart';




class AndroidSmallSevenTabContainerScreen extends StatefulWidget {
  const AndroidSmallSevenTabContainerScreen({Key? key})
      : super(
    key: key,
  );

  @override
  AndroidSmallSevenTabContainerScreenState createState() =>
      AndroidSmallSevenTabContainerScreenState();
}

class AndroidSmallSevenTabContainerScreenState
    extends State<AndroidSmallSevenTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

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
                _buildTabview(context),
                SizedBox(
                  height: 630.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      AndroidSmallSevenPage(),
                      AndroidSmallSevenPage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 41.v,
      width: 353.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onError,
        labelStyle: TextStyle(
          fontSize: 18.fSize,
          fontFamily: 'Keania One',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: theme.colorScheme.onError,
        unselectedLabelStyle: TextStyle(
          fontSize: 18.fSize,
          fontFamily: 'Keania One',
          fontWeight: FontWeight.w400,
        ),
        indicatorColor: theme.colorScheme.onError,
        tabs: [
          Tab(
            child: Text(
              "Recipes",
            ),
          ),
          Tab(
            child: Text(
              "PreparatioN",
            ),
          ),
        ],
      ),
    );
  }
}
