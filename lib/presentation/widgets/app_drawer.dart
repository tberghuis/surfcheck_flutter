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
