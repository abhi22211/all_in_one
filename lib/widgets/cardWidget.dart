import 'package:flutter/material.dart';


class HomeCard extends StatelessWidget {
  final String cardTitle;
  final IconData cardIcon;
  final Function() onPressed;

  const HomeCard(
  {super.key,
  required this.cardTitle,
  required this.cardIcon,
   required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1,color: Colors.orange.withOpacity(0.5))
      ),
      child:InkWell(
            onTap: onPressed,
            child: GridTile(
            child: Center(child: Icon(cardIcon,size: 25,)),
            footer: Center(child: Text(cardTitle,style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.black),))
        ),
      ),
    );
  }
}
