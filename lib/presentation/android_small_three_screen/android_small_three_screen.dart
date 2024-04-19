import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:moviles/core/app_export.dart';
import 'package:moviles/widgets/custom_text_form_field.dart';

class AndroidSmallThreeScreen extends StatelessWidget {
  AndroidSmallThreeScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                SizedBox(height: 14),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "User",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.black),
                  ),
                ),
                SizedBox(height: 12),
                _buildEditText(context, nameController, "Name"),
                SizedBox(height: 11),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Correo",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.black),
                  ),
                ),
                SizedBox(height: 10),
                _buildEditText(context, emailController, "Email"),
                SizedBox(height: 11),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Password",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.black),
                  ),
                ),
                SizedBox(height: 10),
                _buildEditText(context, passwordController, "Password"),
                SizedBox(height: 22),
                Align(
                  alignment: Alignment.center,
                  child: _buildRegisterButton(context),
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEditText(BuildContext context, TextEditingController controller, String hintText) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: CustomTextFormField(
        width: double.infinity,
        controller: controller,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.black),
        textStyle: TextStyle(color: Colors.black),
      ),
    );
  }

  Widget _buildTwelve(BuildContext context) {
    return SizedBox(
      height: 306,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle2,
            height: 306,
            width: 360,
            radius: BorderRadius.circular(20),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.androidSmallTwoScreen);
                      },
                      child: Text(
                        "Login",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.black),
                      ),
                    ),
                  ),
                  _buildRegisterButton(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRegisterButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _register(context),
      child: Text("Register"),
    );
  }

  void _register(BuildContext context) async {
    var url = Uri.parse(
        'https://orca-app-3cpmy.ondigitalocean.app/users'); // Asegúrate que la dirección es accesible
    var headers = {
      'Content-Type': 'application/json; charset=UTF-8',
    };
    var body = jsonEncode({
      'name': nameController.text,
      'email': emailController.text,
      'password': passwordController.text,
    });
    print(nameController.text);
    try {
      var response = await http.post(url, headers: headers, body: body);
      if (response.statusCode == 200) {
        print('Response: ${response.body}');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Registro exitoso'),
            backgroundColor: Colors.green,
          ),
        );
      } else {
        print('Request failed with status: ${response.statusCode}');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error en el registro: ${response.statusCode}'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } catch (e) {
      print('Error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error en el registro: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
