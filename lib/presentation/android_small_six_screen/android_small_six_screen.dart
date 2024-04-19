import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:moviles/core/app_export.dart';

class AndroidSmallSixScreen extends StatefulWidget {
  final Map<String, dynamic> recipe;

  const AndroidSmallSixScreen({Key? key, required this.recipe}) : super(key: key);

  @override
  _AndroidSmallSixScreenState createState() => _AndroidSmallSixScreenState();
}

class _AndroidSmallSixScreenState extends State<AndroidSmallSixScreen> {
  bool showIngredients = true;

  @override
  void initState() {
    super.initState();
    fetchRecipeDetails(); // Llama a la función que obtiene los detalles de la receta
  }

  Future<void> fetchRecipeDetails() async {
    final url = 'https://orca-app-3cpmy.ondigitalocean.app/recipes/4'; // URL de la API para obtener los detalles de la receta
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = json.decode(response.body);
        setState(() {
          widget.recipe.addAll(responseData); // Agrega los datos obtenidos a la receta existente
        });
      } else {
        throw Exception('Failed to load recipe details');
      }
    } catch (e) {
      print('Error fetching recipe details: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle1,
              height: 200,
              width: double.infinity,
              radius: BorderRadius.circular(20),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.recipe['name'],
                    style: theme.textTheme.headline6!.copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildButton("Ingredients", showIngredients),
                      _buildButton("Preparation", !showIngredients),
                    ],
                  ),
                  SizedBox(height: 12),
                  Divider(),
                  SizedBox(height: 12),
                  _buildRecipeDetailSection(
                    "Ingredients",
                    widget.recipe['ingredients'],
                    showIngredients,
                  ),
                  _buildRecipeDetailSection(
                    "Preparation",
                    "Step 1\nStep 2\nStep 3",
                    !showIngredients,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(String title, bool isSelected) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          showIngredients = title == "Ingredients";
        });
      },
      style: ElevatedButton.styleFrom(
        primary: isSelected ? Colors.blue : Colors.transparent,
        onPrimary: isSelected ? Colors.white : Colors.black,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: Text(title),
    );
  }

  Widget _buildRecipeDetailSection(String title, String value, bool isVisible) {
    if (!isVisible) {
      return SizedBox.shrink();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(value),
      ],
    );
  }
}
