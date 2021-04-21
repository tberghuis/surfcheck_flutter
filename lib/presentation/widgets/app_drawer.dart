import 'package:flutter/material.dart';
import '../../constants/enums.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('lennox'),
            onTap: () {
              // Navigator.pop(context);
              Navigator.popAndPushNamed(context, '/cam/lennox');
            },
          ),
          for (var cam in Cam.values) DrawerEntry(cam),
        ],
      ),
    );
  }
}

class DrawerEntry extends StatelessWidget {
  final Cam cam;
  DrawerEntry(this.cam);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(cam.name),
      onTap: () {
        Navigator.popAndPushNamed(context, '/cam', arguments: cam);
      },
    );
  }
}
