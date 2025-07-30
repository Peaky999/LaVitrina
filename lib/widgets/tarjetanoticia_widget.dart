import 'package:flutter/material.dart';

class TarjetaNoticia extends StatelessWidget {
  final String rutaRedireccion;
  final String imagenUrl;
  final String titulo;
  final String categoria;

  const TarjetaNoticia({
    super.key,
    required this.rutaRedireccion,
    required this.imagenUrl,
    required this.titulo,
    required this.categoria,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      elevation: 4,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, rutaRedireccion);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(imagenUrl),
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                categoria.toUpperCase(),
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Título
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                titulo,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}