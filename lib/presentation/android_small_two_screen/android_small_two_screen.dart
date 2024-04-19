import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:moviles/core/app_export.dart';
import 'package:moviles/widgets/custom_outlined_button.dart';
import 'package:moviles/widgets/custom_text_form_field.dart';

// Pagina del login
class AndroidSmallTwoScreen extends StatelessWidget {
  AndroidSmallTwoScreen({Key? key}) : super(key: key);

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
                SizedBox(height: 45),
                Text(
                  "User",
                  // style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 3),
                _buildEditText(context),
                SizedBox(height: 25),
                Text(
                  "Password",
                  // style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 10),
                _buildEditText1(context),
                SizedBox(height: 15),
                _buildLogin1(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  /// Section Widget
  /// en la parte donde se hace el cmabio de login y registro
  Widget _buildLogin(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _login(context);
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),

      ),
      child: Text(
        "Login",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black, // Color del texto del botón
        ),
      ),
    );
  }


  /// Section Widget
  Widget _buildEleven(BuildContext context) {
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
             radius: BorderRadius.circular(
              20,
            ),
             alignment: Alignment.center,
           ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildLogin(context),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 55,
                      bottom: 7,
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
      width: 178,
      controller: editTextController,
      textStyle: TextStyle(color: Colors.black), // Aquí se establece el color del texto del campo de usuario
    );
  }

  /// Section Widget
  Widget _buildEditText1(BuildContext context) {
    return CustomTextFormField(
      width: 178,
      controller: editTextController1,
      textStyle: TextStyle(color: Colors.black), // Aquí se establece el color del texto del campo de usuario
    );
  }

  /// Section Widget
  Widget _buildLogin1(BuildContext context) {
    return CustomOutlinedButton(
      width: 202,
      text: "login",
      margin: EdgeInsets.only(
        bottom: 59,
      ),
      buttonStyle: CustomButtonStyles.outlineGrayTL20,
      onPressed: () {
        _login(context); // Pasar el contexto al método _login
      },
    );
  }


  void _login(BuildContext context) async {
    try {
      var url = Uri.parse('https://orca-app-3cpmy.ondigitalocean.app/login');
      var response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'email': editTextController.text,
          'password': editTextController1.text,
        }),
      );
      if (response.statusCode == 200) {
        // Si la solicitud es exitosa (código de estado 200), puedes manejar la respuesta aquí
        print('Response: ${response.body}');
        // Aquí puedes hacer algo con la respuesta, como navegar a otra pantalla
        Navigator.pushNamed(context, AppRoutes.foodClasificationScreen);
      } else {
        // Si la solicitud no es exitosa, maneja el error aquí
        print('Request failed with status: ${response.statusCode}');
        // Puedes mostrar un mensaje de error al usuario o realizar cualquier otra acción necesaria
      }
    } catch (e) {
      // Si ocurre un error durante la solicitud, maneja la excepción aquí
      print('Error: $e');
      // Puedes mostrar un mensaje de error al usuario o realizar cualquier otra acción necesaria
    }
  }
}
