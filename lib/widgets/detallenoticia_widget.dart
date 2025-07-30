import 'package:flutter/material.dart';

class DetalleNoticia extends StatelessWidget {
  final String imagenUrl;
  final String titulo;
  final String categoria;
  final String texto;

  const DetalleNoticia({
    super.key,
    required this.imagenUrl,
    required this.titulo,
    required this.categoria,
    required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(categoria)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              child: Image(
                image: AssetImage(imagenUrl),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Text(categoria.toUpperCase(),
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(titulo,
                style: const TextStyle(
                  fontSize: 45,                  
                  color: Colors.black87,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 0.5
                ),
              ),
            ),
            Container(height: 12),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(texto),
            ),           
            Container(height: 24),            
          ],
        ),
      ),
    );
  }
}
