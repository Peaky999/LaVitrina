import 'package:flutter/material.dart';
import 'package:lavitrina_app/widgets/menu_widget.dart';
import 'package:lavitrina_app/widgets/opinion_widget.dart';

class OpinionScreen extends StatelessWidget {
  const OpinionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('La Vitrina')),
      endDrawer: const MenuWidget(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0),
            child: Text(
              'Cartas al Director',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Serif', // Puedes ajustar o importar otra fuente
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(width: double.infinity, height: 1.5, color: Colors.black87),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EncabezadoOpinion(
                    fecha: '29 de julio 2025',
                    titulo:
                        'Seguridad municipal: no a costa de los trabajadores',
                  ),
                  SizedBox(height: 16),
                  EncabezadoOpinion(
                    fecha: '28 de julio 2025',
                    titulo: 'Liderazgo femenino en puestos de alta dirección',
                  ),
                  SizedBox(height: 16),
                  EncabezadoOpinion(
                    fecha: '27 de julio 2025',
                    titulo: 'IA y ciberseguridad: ¿Aliados o amenza?',
                  ),
                  SizedBox(height: 16),
                  EncabezadoOpinion(
                    fecha: '27 de julio 2025',
                    titulo: 'Autorregulacion: una urgencia frente a la violencia escolar',
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
