import 'package:flutter/material.dart';

class EncabezadoOpinion extends StatelessWidget {
  final String fecha;
  final String titulo;

  const EncabezadoOpinion({
    super.key,
    required this.fecha,
    required this.titulo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          fecha,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
            fontFamily: 'Roboto',
          ),
        ),
        const SizedBox(height: 4),
        Text(
          titulo,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            fontFamily: 'Serif',
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}