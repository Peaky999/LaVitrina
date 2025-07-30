import 'package:flutter/material.dart';
import 'package:lavitrina_app/widgets/detallenoticia_widget.dart';
import 'package:lavitrina_app/widgets/menu_widget.dart';

class NoticiaScreen extends StatelessWidget {
  const NoticiaScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.share), onPressed: () {}),
        title: const Text('La Vitrina'),
      ),

      endDrawer: const MenuWidget(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              alignment: Alignment.centerLeft,
              decoration: const BoxDecoration(
                color: Color(0xFF0986d3),
              ),
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/img/noticia/noticia2.png',
                  width: 20,
                  height: 20,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const Expanded(
            child: Center(
              child: DetalleNoticia(
                imagenUrl: 'assets/img/noticia/noticia.webp',
                titulo:
                    'Israel rechaza presión internacional para un alto al fuego en Gaza',
                categoria: 'Noticia',
                texto:
                    '''El canciller de Israel, Gideon Saar dijo a los periodistas que terminar el conflicto mientras el movimiento islamista palestino Hamás sigue en el poder en Gaza y tiene rehenes sería una “tragedia tanto para israelíes como para palestinos”. Y agregó: “Eso no va a suceder, sin importar cuánta presión se ejerza sobre Israel”.

Israel ha llevado a cabo una campaña militar contra Hamás en Gaza durante casi 22 meses, desde el sangriento ataque transfronterizo de Hamás y otras milicias palestinas el 7 de octubre de 2023. Hmás es

Presión para alto al fuego y ayuda humanitaria
En las últimas semanas, la presión internacional ha ido en aumento para lograr un alto al fuego que permita a las agencias humanitarias llevar ayuda alimentaria a Gaza y evitar lo que las agencias de la ONU describen ya como una hambruna “en marcha”.

Según la última Alerta de Clasificación Integrada de Seguridad Alimentaria (IPC), emitida este martes, más de uno de cada tres habitantes de la Franja de Gaza pasa días sin comer, y el resto de indicadores de nutrición han alcanzado sus peores niveles desde que comenzó el conflicto. “Dos de los tres umbrales de hambruna ya se han superado en algunas partes del territorio”, indican los datos compartidos.

El Programa Mundial de Alimentos de las Naciones Unidas (PMA) y el Fondo de Naciones Unidas para la Infancia, UNICEF, “advierten de que se está agotando el tiempo para montar una respuesta humanitaria a gran escala”, según la nota.
''',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
