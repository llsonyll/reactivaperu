import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reactiva/domain/models/sub_menu.dart';

import 'logoReactiva.dart';

class ReactivaSideMenu extends StatelessWidget {
  const ReactivaSideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Logo reactiva y boton POP
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LogoReactiva(),
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.times,
                          color: Theme.of(context).colorScheme.onPrimary,
                          size: 18.0,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                  ],
                ),
                //Datos del usuario > foto, email y nombre
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10.0),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Correo usuario'),
                          Text('Nombre usuario'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: subMenus.length,
              itemBuilder: (_, index) {
                final subMenu = subMenus[index];
                return ListTile(
                  title: Text(
                    subMenu.nombre,
                    //Color tema : To Do
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text(
                    subMenu.descripcion,
                    //Color tema : To Do
                    style: TextStyle(),
                  ),
                  onTap: () {
                    // Navegacion hacia el sub-menu : To Do
                  },
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Salir',
                  //Color tema : To Do
                  style: TextStyle(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
