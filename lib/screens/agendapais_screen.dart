import 'package:flutter/material.dart';
import 'package:lavitrina_app/widgets/detallenoticia_widget.dart';
import 'package:lavitrina_app/widgets/menu_widget.dart';

class AgendapaisScreen extends StatelessWidget {
  const AgendapaisScreen({super.key});
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      leading: IconButton(
        icon: const Icon(Icons.share),
        onPressed: (){}),
      title: const Text('La Vitrina'),
    ),
    endDrawer: const MenuWidget(),
    body: const Center(
      child: DetalleNoticia(
          imagenUrl: 'assets/img/pais/pais.jpg',
          titulo: 'Internacional Demócrata de Centro rechaza apoyo DC a Jeannette Jara: “Contradicción profunda”',
          categoria: 'Pais',
          texto:'''Desde Bruselas, la Internacional Demócrata de Centro (IDC) emitió una declaración cuestionando la reciente resolución de la Democracia Cristiana (DC), que decidió respaldar la candidatura presidencial de Jeannette Jara, militante del Partido Comunista.

La organización internacional, que agrupa a partidos de centro y centroderecha humanista de todo el mundo, calificó la decisión como “inexplicable” y una “contradicción profunda” con los principios históricos de la DC.
En el comunicado, la IDC advierte que el apoyo a una candidata comunista no representa simplemente una diferencia táctica o programática, sino un quiebre con el proyecto político que alguna vez simbolizó transformación con dignidad y libertad. Recordaron que la Democracia Cristiana nació como una alternativa frente a los extremos, inspirada en un humanismo que buscaba justicia social sin ceder ante el “totalitarismo del marxismo-leninismo”.

“Fue Eduardo Frei Montalva quien afirmó con claridad que no se podía ser neutral entre libertad y dictadura”, señala la declaración. “Esa brújula moral, que guio a miles de líderes y ciudadanos, es la que hoy parece haber sido abandonada”, añaden. A juicio de la IDC, el verdadero humanismo cristiano no puede pactar con visiones autoritarias como las que, según la entidad, representa el Partido Comunista.
'''          ,
        ),
    ),
    );
  }
}