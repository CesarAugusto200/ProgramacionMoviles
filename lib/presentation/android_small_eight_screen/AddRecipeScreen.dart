import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AndroidSmallFiveScreen extends StatefulWidget {
  const AndroidSmallFiveScreen({Key? key}) : super(key: key);

  @override
  _AndroidSmallFiveScreenState createState() => _AndroidSmallFiveScreenState();
}

class _AndroidSmallFiveScreenState extends State<AndroidSmallFiveScreen> {
  List<Map<String, dynamic>> recipes = [];

  @override
  void initState() {
    super.initState();
    fetchRecipes();
  }

  Future<void> fetchRecipes() async {
    final url = Uri.parse('https://orca-app-3cpmy.ondigitalocean.app/recipes');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final List<dynamic> responseData = json.decode(response.body);
        setState(() {
          recipes = responseData.cast<Map<String, dynamic>>();
        });
      } else {
        throw Exception('Failed to load recipes');
      }
    } catch (e) {
      print('Error fetching recipes: $e');
    }
  }

  Future<void> deleteRecipe(String recipeId, int index) async {
    final url = Uri.parse('https://orca-app-3cpmy.ondigitalocean.app/recipes/$recipeId');
    try {
      final response = await http.delete(url);
      if (response.statusCode == 200) {
        setState(() {
          recipes.removeAt(index);
        });
      } else {
        print('Failed to delete recipe: ${response.statusCode}');
      }
    } catch (e) {
      print('Error deleting recipe: $e');
    }
  }

  Future<void> addNewRecipe(Map<String, String> newRecipeData) async {
    final url = Uri.parse('https://orca-app-3cpmy.ondigitalocean.app/recipes');
    try {
      final response = await http.post(
        url,
        body: json.encode(newRecipeData),
        headers: {'Content-Type': 'application/json'},
      );
      if (response.statusCode == 201) {
        // Después de agregar la receta con éxito, actualiza la lista de recetas
        fetchRecipes();
      } else {
        print('Failed to add recipe: ${response.statusCode}');
      }
    } catch (e) {
      print('Error adding recipe: $e');
    }
  }

  void _showAddRecipeForm() {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final Map<String, String> formData = {
      'name': '',
      'nacionality': '',
      'ingredients': '',
      'preparation': '',
      'difficulty': '',
    };

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Agregar Nueva Receta'),
          content: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Nombre de la receta'),
                    validator: (value) => value!.isEmpty ? 'Este campo no puede estar vacío' : null,
                    onSaved: (value) => formData['name'] = value!,
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Nacionalidad'),
                    onSaved: (value) => formData['nacionality'] = value!,
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Ingredientes'),
                    onSaved: (value) => formData['ingredients'] = value!,
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Preparación'),
                    onSaved: (value) => formData['preparation'] = value!,
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Dificultad'),
                    onSaved: (value) => formData['difficulty'] = value!,
                  ),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancelar'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            TextButton(
              child: Text('Agregar'),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  // Agregar la nueva receta
                  addNewRecipe(formData);
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF3F3F3),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 10), // Asegúrate de definir 'v' en tus extensiones
              Expanded(
                child: ListView.builder(
                  itemCount: recipes.length,
                  itemBuilder: (context, index) {
                    return RecipeCard(
                      recipe: recipes[index],
                      index: index,
                      onDelete: (recipeId, idx) => deleteRecipe(recipeId, idx),
                    );
                  },
                ),
              ),
              ElevatedButton(
                onPressed: _showAddRecipeForm,
                child: Text('Agregar nueva receta'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RecipeCard extends StatelessWidget {
  final Map<String, dynamic> recipe;
  final int index;
  final Function(String, int) onDelete;

  const RecipeCard({Key? key, required this.recipe, required this.index, required this.onDelete}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final recipeId = recipe['id'].toString(); // Asegúrate de que 'id' es la clave correcta.

    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              recipe['name'].toString().toUpperCase(),
              style: theme.textTheme.headline6!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Ingredientes: ${recipe['ingredients']}',
              style: theme.textTheme.subtitle1,
            ),
            SizedBox(height: 8.0),
            Text(
              'Preparación: ${recipe['preparation']}',
              style: theme.textTheme.subtitle1,
            ),
            SizedBox(height: 8.0),
            Text(
              'Dificultad: ${recipe['difficulty']}',
              style: theme.textTheme.subtitle1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.delete, color: Colors.red),
                  onPressed: () => onDelete(recipeId, index),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
