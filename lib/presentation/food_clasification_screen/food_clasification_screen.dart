import 'package:flutter/material.dart';
import 'package:moviles/core/app_export.dart';
import 'widgets/foodclasification_item_widget.dart';

class FoodClasificationScreen extends StatelessWidget {
  const FoodClasificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 27.v),
          child: Column(
            children: [
              SizedBox(height: 5.v),
              Expanded(
                child: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    children: [
                      Text(
                        "food classification".toUpperCase(),
                        textAlign: TextAlign.center,
                        style: theme.textTheme.headlineMedium,
                      ),
                      SizedBox(height: 13.v),
                      _buildFoodClasification(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFoodClasification() {
    return Expanded(
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 56.v,
          );
        },
        itemCount: 3, // Cambiar itemCount a 3 para mostrar las tres clases
        itemBuilder: (context, index) {
          // Utiliza un switch para retornar cada widget según el índice
          switch (index) {
            case 0:
              return FoodclasificationItemWidget();
            case 1:
              return Foodclasification2ItemWidget();
            case 2:
              return Foodclasification3ItemWidget();
            default:
              return SizedBox.shrink(); // Otra opción es retornar un SizedBox.shrink() para índices fuera de rango
          }
        },
      ),
    );
  }

}
