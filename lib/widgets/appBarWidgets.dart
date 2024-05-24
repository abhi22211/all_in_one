import 'package:flutter/material.dart';

class Appbarwidgets extends StatelessWidget implements PreferredSizeWidget {

  final String apptitle;
  final double height;
  Function() onpressed;

  Appbarwidgets({
     super.key,
     required this.apptitle,
     required this.onpressed,
     this.height = kToolbarHeight,
   });


  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        title: Text(apptitle),
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: onpressed,
      ),
      ),
    );
    throw UnimplementedError();
  }
}



