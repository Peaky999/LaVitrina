import 'package:flutter/material.dart';
import 'package:lavitrina_app/widgets/menu_widget.dart';
import 'package:lavitrina_app/widgets/tarjetanoticia_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      leading: IconButton(
        icon: const Icon(Icons.share),
        onPressed: (){}),
      title: const Text('La Vitrina',
      style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 28,
      color: Color.fromARGB(255, 0, 0, 0),
      letterSpacing: 1.2,
    ),),
    ),
    endDrawer: const MenuWidget(),
    body: ListView(      
        padding: const EdgeInsets.all(12),
        children: const [
          TarjetaNoticia(
            rutaRedireccion: 'noticia',
            imagenUrl: 'assets/img/noticia/noticia.webp',
            titulo: 'Israel rechaza presión internacional para un alto al fuego en Gaza',
            categoria: 'Noticia',
          ),
          TarjetaNoticia(
            rutaRedireccion: 'agendaPais',
            imagenUrl: 'assets/img/pais/pais.jpg',
            titulo: 'Internacional Demócrata de Centro rechaza apoyo DC a Jeannette Jara: "Contradicción profunda"',
            categoria: 'País',
          ),
          TarjetaNoticia(
            rutaRedireccion: 'cultura',
            imagenUrl: 'assets/img/cultura/cultura.png',
            titulo: 'Alejandro Olivares lanza "Atlas de la historia abstracta y subjetiva de Chile" en StgoFoto 2025',
            categoria: 'Cultura',
          ),
        ],
      ),
    );
  }
}