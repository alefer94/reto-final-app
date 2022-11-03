import 'package:app_delivery_restaurant/app/ui/views/detail/widgets/infoProduct.dart';
import 'package:flutter/material.dart';

//en este widget podremso observar como los productos se alinean de columnas
// es la segunda vista, l primera es ShowModalSelectImageView( primera vista )

//e usado la libreria SliderList / sliderGrid

final imagenesList = [
  "noodles_ramen1",
  "noodles_ramen2",
  "noodles_ramen3",
  "noodles_ramen5",
  "noodles_ramen6",
  "noodles_ramen7",
  "noodles_ramen8",
  "noodles_ramen9",
  "noodles_ramen10",
  "noodles_ramen11",
];

String letra = "";

Color colors2 = Colors.transparent;
String text3 = "";

double a = 0.0;

double b = 0.0;

class GridProductoView extends StatelessWidget {
  const GridProductoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return NotificationListener<DraggableScrollableNotification>(
      onNotification: (notification) {
        return true;
      },
      child: Stack(
        children: [
          DraggableScrollableSheet(
            snap: true,
            initialChildSize: 0.434,
            minChildSize: 0.434,
            // maxChildSize: 0.91,

            maxChildSize: 1.0,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                color: Colors.white,
                child: CustomScrollView(
                  controller: scrollController,
                  slivers: [
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          if (index == 0) {
                            return Container(
                              padding: const EdgeInsets.only(top: 30.0),
                              margin:
                                  const EdgeInsets.only(top: 0.0, bottom: 23.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  menuCLA_EXP_FIN("Clasic",
                                      color: Colors.grey[100]),
                                  menuCLA_EXP_FIN("Experimental"),
                                  menuCLA_EXP_FIN("Speicality"),
                                ],
                              ),
                            );
                          }

                          if (index == 1) {}
                          return null;
                        },
                      ),
                    ),
                    SliverGrid(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            //showModalBottomSheet (selecion de item en la lista GRID(silver )) para agregar al carro de comprar
                            return GestureDetector(
                              child: SizedBox(
                                width: double.infinity,
                                //Se le puede agregrar un color poder ver que alcancce de widgets tiene

                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(26.0),
                                      child: Image.asset(
                                        "assets/images/${imagenesList[index]}.jpg",
                                        height: 130,
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const Text(
                                      "Classic Ramen with chicken and eg",
                                      style: TextStyle(fontSize: 16.0),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[200],
                                          borderRadius:
                                              const BorderRadius.horizontal(
                                                  left: Radius.circular(30),
                                                  right: Radius.circular(30))),
                                      alignment: Alignment.center,
                                      child: const Text("\$655",
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold)),
                                    )
                                  ],
                                ),
                              ),
                              //se abre el modar para con la informacion de litem a comprar
                              onTap: () {
                                showModalBottomSheet(
                                    backgroundColor: Colors.transparent,
                                    //para que el modal ocupe toda la pantalla
                                    isScrollControlled: true,
                                    //ya no es necesario, solo si isScrollCo... esta activado
                                    elevation: 1000,
                                    context: context,
                                    //llamamo a la vista
                                    builder: (context) {
                                      return InfoProduct();
                                      //
                                    });
                              },
                            );
                          },
                          childCount: imagenesList.length,
                        ),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10,
                                childAspectRatio: 0.75))
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Container menuCLA_EXP_FIN(String texto, {Color? color}) => Container(
        alignment: Alignment.center,
        width: 110,
        height: 60,
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(30), right: Radius.circular(30))),
        child: Text(
          texto,
          style: const TextStyle(
            fontSize: 16.0,
          ),
          maxLines: 5,
        ),
      );
}
