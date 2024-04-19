import 'package:flutter/material.dart';
import 'package:moviles/core/app_export.dart';



// ignore_for_file: must_be_immutable
class AndroidSmallSevenPage extends StatefulWidget {
  const AndroidSmallSevenPage({Key? key})
      : super(
    key: key,
  );

  @override
  AndroidSmallSevenPageState createState() => AndroidSmallSevenPageState();
}

class AndroidSmallSevenPageState extends State<AndroidSmallSevenPage>
    with AutomaticKeepAliveClientMixin<AndroidSmallSevenPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 8.v),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 12.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 17.h,
                    vertical: 3.v,
                  ),
                  decoration: AppDecoration.outlinePrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Container(
                    width: 278.h,
                    margin: EdgeInsets.only(right: 22.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Preparación de la salsa bechamel"
                                .toUpperCase(),

                          ),
                          TextSpan(
                            text:
                            ":\nDerrite la mantequilla en una sartén a fuego medio.\n\nAgrega la harina y revuelve hasta que se forme una pasta (roux).\n\nVierte lentamente la leche mientras sigues revolviendo para evitar grumos.\n\nAñade el diente de ajo y la hoja de laurel.\n\nCocina a fuego lento hasta que la salsa espese.\n\nSazona con sal, pimienta y nuez moscada.\n\nRetira el ajo y la hoja de laurel.\n\n"
                                .toUpperCase(),

                          ),
                          TextSpan(
                            text: "2.- Armar los sándwiches".toUpperCase(),

                          ),
                          TextSpan(
                            text:
                            ":\n\nUnta mostaza en una rebanada de pan.\nColoca una loncha de jamón encima.\nEspolvorea queso rallado sobre el jamón.\nCubre con otra rebanada de pan.\nUnta la parte superior con salsa bechamel.\nEspolvorea más queso rallado.\n"
                                .toUpperCase(),

                          ),
                          TextSpan(
                            text: "3.-Gratinar".toUpperCase(),

                          ),
                          TextSpan(
                            text:
                            ":\n\nColoca los sándwiches en una bandeja para hornear.\nHornea a 375°F (190°C) hasta que el queso esté derretido y dorado.\n\n"
                                .toUpperCase(),

                          ),
                          TextSpan(
                            text:
                            "      4.-Servir:\nSirve caliente y disfruta de tu Croque Monsieur."
                                .toUpperCase(),

                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}