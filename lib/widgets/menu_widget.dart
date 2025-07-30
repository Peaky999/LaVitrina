import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.50,
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Container(
                  height: 60,
                  color: Color.fromARGB(255, 243, 242, 242),
                ),
                ListTile(
                  title: Text(
                    'Inicio',
                    style: TextStyle(fontSize: 20, fontFamily: 'Roboto'),
                  ),
                  onTap: () => Navigator.pushNamed(context, 'home'),
                ),
                ListTile(
                  title: Text(
                    'Noticias',
                    style: TextStyle(fontSize: 20, fontFamily: 'Roboto'),
                  ),
                  onTap: () => Navigator.pushNamed(context, 'noticia'),
                ),
                ListTile(
                  title: Text(
                    'Cultura',
                    style: TextStyle(fontSize: 20, fontFamily: 'Roboto'),
                  ),
                  onTap: () => Navigator.pushNamed(context, 'cultura'),
                ),
                ListTile(
                  title: Text(
                    'País',
                    style: TextStyle(fontSize: 20, fontFamily: 'Roboto'),
                  ),
                  onTap: () => Navigator.pushNamed(context, 'agendaPais'),
                ),
                ListTile(
                  title: Text(
                    'Opinion',
                    style: TextStyle(fontSize: 20, fontFamily: 'Roboto'),
                  ),
                  onTap: () => Navigator.pushNamed(context, 'opinion'),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.facebook, color: Colors.blue),
                Icon(Icons.camera_alt, color: Colors.purple),
                Icon(Icons.alternate_email, color: Colors.lightBlue),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            color: Colors.grey.shade200,
            width: double.infinity,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Santiago, Chile',
                  style: TextStyle(fontSize: 12, color: Colors.black87),
                ),
                SizedBox(height: 4),
                Text(
                  '© Copyright 2025 -',
                  style: TextStyle(fontSize: 8, color: Colors.black54),
                ),
                Text(
                  'Algunos derechos reservados',
                  style: TextStyle(fontSize: 8, color: Colors.black54),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
