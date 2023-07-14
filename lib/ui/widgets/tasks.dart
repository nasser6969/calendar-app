import 'package:flutter/material.dart';

class Tasks extends StatelessWidget {
  const Tasks({Key? key, required this.title, required this.subTitle, required this.icon, required this.color}) : super(key: key);

  final String title;
  final String subTitle;
  final Icon icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          ListTile(
            title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold,color: Color(0xff213546)),),
            subtitle: Text(subTitle, style: const TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),),
            leading: Container(
              decoration: BoxDecoration(shape: BoxShape.circle,color: color),
              height: 50,
              width: 50,
              child: icon,
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 10) ,
          ),
        ],
    );
  }
}
