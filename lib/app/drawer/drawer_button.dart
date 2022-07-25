import 'package:flutter/material.dart';

class DrawerButton extends StatelessWidget {
  const DrawerButton(this.drawerButtonName, this.builder, {Key? key})
      : super(key: key);

  final String drawerButtonName;
  final WidgetBuilder builder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
          width: 250,
          height: 35,
          child: Container(
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Card(child: Center(child: Text(drawerButtonName))))),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: builder,
          ),
        );
      },
    );
  }
}
