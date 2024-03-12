import 'package:moviles/widgets/custom_text_form_field.dart';
import 'package:moviles/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:moviles/core/app_export.dart';
//Pagina del register
class AndroidSmallThreeScreen extends StatelessWidget {
  AndroidSmallThreeScreen({Key? key}) : super(key: key);

  TextEditingController registerController = TextEditingController();
  TextEditingController editTextController = TextEditingController();
  TextEditingController editTextController1 = TextEditingController();
  TextEditingController editTextController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTwelve(context),
                SizedBox(height: 14.v),
                Padding(
                  padding: EdgeInsets.only(left: 155.h),
                  child: Text(
                    "User",
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                SizedBox(height: 12.v),
                _buildEditText(context),
                SizedBox(height: 11.v),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Correo",
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                SizedBox(height: 10.v),
                _buildEditText1(context),
                SizedBox(height: 11.v),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Password",
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                SizedBox(height: 10.v),
                _buildEditText2(context),
                SizedBox(height: 22.v),
                _buildRegister1(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRegister(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 67.h),
      child: CustomTextFormField(
        width: 71.h,
        controller: registerController,
        hintText: "Register",
        contentPadding: EdgeInsets.symmetric(horizontal: 1.h),
        borderDecoration: TextFormFieldStyleHelper.underLineDeepOrangeA,
        filled: false,
      ),
    );
  }

  /// Section Widget
  Widget _buildTwelve(BuildContext context) {
    return SizedBox(
      height: 306.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle2,
            height: 306.v,
            width: 360.h,
            radius: BorderRadius.circular(
              20.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 7.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 3.v),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.androidSmallTwoScreen);
                      },

                      child: Text(
                        "Login",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ),
                  _buildRegister(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 85.h),
      child: CustomTextFormField(
        width: 178.h,
        controller: editTextController,
      ),
    );
  }

  /// Section Widget
  Widget _buildEditText1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 85.h),
      child: CustomTextFormField(
        width: 178.h,
        controller: editTextController1,
      ),
    );
  }

  /// Section Widget
  Widget _buildEditText2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 85.h),
      child: CustomTextFormField(
        width: 178.h,
        controller: editTextController2,
        textInputAction: TextInputAction.done,
      ),
    );
  }

  /// Section Widget
  Widget _buildRegister1(BuildContext context) {
    return CustomOutlinedButton(
      width: 202.h,
      text: "Register",
      margin: EdgeInsets.only(left: 73.h),
      onPressed: () {
        Navigator.pushNamed(context, AppRoutes.androidSmallTwoScreen);
      },
    );
  }
}
