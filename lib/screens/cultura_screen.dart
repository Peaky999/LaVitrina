import 'package:flutter/material.dart';
import 'package:lavitrina_app/widgets/menu_widget.dart';
import 'package:lavitrina_app/widgets/detallenoticia_widget.dart'; // Asegúrate de importar el widget

class CulturaScreen extends StatelessWidget {
  const CulturaScreen({super.key});

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
      body: Center(
        child: DetalleNoticia(
          imagenUrl: 'assets/img/cultura/cultura.png',
          titulo: 'Alejandro Olivares lanza “Atlas de la historia abstracta y subjetiva de Chile” en StgoFoto 2025',
          categoria: 'Cultura',
          texto:'''
Tras quince años de trabajo, el fotógrafo chileno Alejandro Olivares presentará en StgoFoto 2025 su libro “Atlas de la historia abstracta y subjetiva de Chile”, una obra que dialoga con el clásico “Atlas de Chile” de Claudio Gay, desde una perspectiva contemporánea y crítica.

El lanzamiento se realizará el sábado 2 de agosto, a las 16:50 horas, en el Centro Cultural La Moneda, en el marco del Encuentro y Feria de Fotolibro Latinoamericano.

El libro propone una lectura alternativa del territorio chileno, incorporando imágenes de lugares que, más allá de su relevancia geográfica, poseen un valor simbólico, histórico o emocional, marcados por acontecimientos sociales, políticos o naturales. Así, este atlas busca expandir la noción de territorio, incorporando memorias, afectos, huellas y tensiones que suelen quedar fuera de los registros oficiales.

Con 300 páginas impresas en papeles de alta calidad y una cuidada encuadernación suiza, esta edición fue financiada por Fondart y se publica bajo el sello Buen Lugar Ediciones. La obra se presenta como un compendio visual y reflexivo sobre las transformaciones del paisaje, el impacto de la actividad humana y las formas en que la cultura, la voluntad y la naturaleza se entrelazan.

Trayectoria
Nacido en Santiago en 1981, Alejandro Olivares es fotógrafo y editor con una reconocida trayectoria en el ámbito del ensayo documental. Su obra se ha enfocado en temas sociales, territoriales y de desigualdad, desarrollando proyectos de largo aliento que combinan la investigación, la estética y el compromiso político.

Fue editor fotográfico de The Clinic y ha colaborado con medios nacionales e internacionales. Su trabajo ha sido exhibido en Chile, España y Estados Unidos, y publicado en revistas como Internazionale, Focus, Soho, Joia, Piel de Foto y La Nación. Entre otros reconocimientos, ha recibido el Premio Periodismo de Excelencia, entregado por la Universidad Alberto Hurtado, Premio Rodrigo Rojas de Negri, otorgado por el Ministerio de las Culturas, las Artes y el Patrimonio, y Premio Latinoamericano de Fotografía.

StgoFoto 2025 reunirá a más de 15 editoriales extranjeras y decenas de proyectos editoriales de Chile. El evento ofrecerá lanzamientos, charlas, talleres, visionados de obra, documentales y dos conferencias destacadas: una a cargo de la fotógrafa chilena Leonora Vicuña, en conversación con Emiliano Valenzuela, y otra del editor y director creativo de RM, Ramón Reverté (España-México). Además, se entregará el Premio Internacional StgoFoto al mejor fotolibro del último año. La entrada es gratuita. Más información en @stgofotoferia y stgofoto.com.
'''          ,
        ),
      ),
    );
  }
}