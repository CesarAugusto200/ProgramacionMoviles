import 'package:flutter/material.dart';
import 'package:moviles/core/app_export.dart';
import 'package:moviles/widgets/custom_outlined_button.dart';
import 'package:moviles/widgets/custom_text_form_field.dart';

// Pagina del login
class AndroidSmallTwoScreen extends StatelessWidget {
  AndroidSmallTwoScreen({Key? key}) : super(key: key);

  TextEditingController loginController = TextEditingController();
  TextEditingController editTextController = TextEditingController();
  TextEditingController editTextController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildEleven(context),
                SizedBox(height: 45.v),
                Text(
                  "User",
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 3.v),
                _buildEditText(context),
                SizedBox(height: 25.v),
                Text(
                  "Password",
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 10.v),
                _buildEditText1(context),
                SizedBox(height: 15.v),
                _buildLogin1(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLogin(BuildContext context) {
    return CustomTextFormField(
      width: 71.h,
      controller: loginController,
      hintText: "Login",
      contentPadding: EdgeInsets.symmetric(horizontal: 12.h),
      borderDecoration: TextFormFieldStyleHelper.underLineDeepOrangeA,
      filled: false,
    );
  }

  /// Section Widget
  Widget _buildEleven(BuildContext context) {
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
              padding: EdgeInsets.only(bottom: 3.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildLogin(context),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 55.h,
                      bottom: 7.v,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.androidSmallThreeScreen);
                      },
                      child: Text(
                        "Register",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ),
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
    return CustomTextFormField(
      width: 178.h,
      controller: editTextController,
    );
  }

  /// Section Widget
  Widget _buildEditText1(BuildContext context) {
    return CustomTextFormField(
      width: 178.h,
      controller: editTextController1,
    );
  }

  /// Section Widget
  Widget _buildLogin1(BuildContext context) {
    return CustomOutlinedButton(
      width: 202.h,
      text: "login",
      margin: EdgeInsets.only(
        bottom: 59.v,
      ),
      buttonStyle: CustomButtonStyles.outlineGrayTL20,
      onPressed: () {
        // aqui redirecciona del btn login a la pagina principal
        Navigator.pushNamed(context, AppRoutes.foodClasificationScreen);
      },
    );
  }
}
