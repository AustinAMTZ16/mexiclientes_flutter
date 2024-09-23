import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppStyles.appBarColor,
          title: Text(
            'Sistema Mexicientes',
            style: AppStyles.appTitleColor,
          ),
        ),
        backgroundColor: AppStyles.backgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20), // Adds space from the top if needed
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                "Panel de Control",
                style: AppStyles.listTileTitleStyle,
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: AppStyles.appBarColor,
                ),
                child: Text(
                  'Menu',
                  style: AppStyles.drawerHeaderStyle,
                ),
              ),
              ListTile(
                leading: Icon(Icons.home, color: Colors.black),
                title: Text('Home', style: AppStyles.listTileTitleStyle),
                onTap: () {
                  // Acción cuando se presiona Home
                },
              ),
              ExpansionTile(
                leading: Icon(Icons.person, color: Colors.black),
                title: Text('Prospectos', style: AppStyles.listTileTitleStyle),
                children: <Widget>[
                  ListTile(
                    contentPadding: AppStyles.listTilePadding,
                    title:
                        Text('Crear Prospecto', style: AppStyles.subTitleStyle),
                    onTap: () {
                      // Acción para crear Prospecto
                    },
                  ),
                  ListTile(
                    contentPadding: AppStyles.listTilePadding,
                    title: Text('Lista de Prospectos',
                        style: AppStyles.subTitleStyle),
                    onTap: () {
                      // Acción para lista de Prospectos
                    },
                  ),
                ],
              ),
              ExpansionTile(
                leading: Icon(Icons.article, color: Colors.black),
                title: Text('Blog', style: AppStyles.listTileTitleStyle),
                children: <Widget>[
                  ListTile(
                    contentPadding: AppStyles.listTilePadding,
                    title: Text('Crear Blog', style: AppStyles.subTitleStyle),
                    onTap: () {
                      // Acción para crear Blog
                    },
                  ),
                  ListTile(
                    contentPadding: AppStyles.listTilePadding,
                    title:
                        Text('Lista de Blogs', style: AppStyles.subTitleStyle),
                    onTap: () {
                      // Acción para lista de Blogs
                    },
                  ),
                ],
              ),
              ExpansionTile(
                leading: Icon(Icons.web, color: Colors.black),
                title: Text('Negocio Web', style: AppStyles.listTileTitleStyle),
                children: <Widget>[
                  ListTile(
                    contentPadding: AppStyles.listTilePadding,
                    title: Text('Lista Negocio Web',
                        style: AppStyles.subTitleStyle),
                    onTap: () {
                      // Acción para lista de Negocio Web
                    },
                  ),
                ],
              ),
              ExpansionTile(
                leading: Icon(Icons.inventory, color: Colors.black),
                title: Text('Panel de Ventas',
                    style: AppStyles.listTileTitleStyle),
                children: <Widget>[
                  ListTile(
                    contentPadding: AppStyles.listTilePadding,
                    title: Text('Crear Venta', style: AppStyles.subTitleStyle),
                    onTap: () {
                      // Acción para crear Venta
                    },
                  ),
                  ListTile(
                    contentPadding: AppStyles.listTilePadding,
                    title:
                        Text('Lista de Ventas', style: AppStyles.subTitleStyle),
                    onTap: () {
                      // Acción para lista de Ventas
                    },
                  ),
                  ListTile(
                    contentPadding: AppStyles.listTilePadding,
                    title: Text('Crear Inventario',
                        style: AppStyles.subTitleStyle),
                    onTap: () {
                      // Acción para crear Inventario
                    },
                  ),
                  ListTile(
                    contentPadding: AppStyles.listTilePadding,
                    title: Text('Lista de Inventario',
                        style: AppStyles.subTitleStyle),
                    onTap: () {
                      // Acción para lista de Inventario
                    },
                  ),
                ],
              ),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.black),
                title: Text('Cuenta', style: AppStyles.listTileTitleStyle),
                onTap: () {
                  // Acción cuando se presiona Cuenta
                },
              ),
              ListTile(
                leading: Icon(Icons.logout, color: Colors.black),
                title: Text('Logout', style: AppStyles.listTileTitleStyle),
                onTap: () {
                  // Acción cuando se presiona Logout
                },
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

// Clase para definir estilos
class AppStyles {
  static const Color appBarColor = Color.fromARGB(255, 61, 142, 67);
  static const TextStyle appTitleColor = TextStyle(
    color: Colors.white,
    fontSize: 24,
  );
  static const Color backgroundColor = Color.fromARGB(255, 255, 255, 255);
  static const TextStyle drawerHeaderStyle = TextStyle(
    color: Colors.white,
    fontSize: 24,
  );
  static const TextStyle listTileTitleStyle = TextStyle(
    color: Color.fromARGB(255, 0, 0, 0),
    fontSize: 18,
  );
  static const TextStyle subTitleStyle = TextStyle(
    color: Color.fromARGB(255, 0, 0, 0),
    fontSize: 16,
  );
  static const EdgeInsets listTilePadding =
      EdgeInsets.symmetric(horizontal: 16);
}
