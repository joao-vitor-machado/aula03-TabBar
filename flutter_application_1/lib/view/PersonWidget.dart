import 'package:flutter/material.dart';

class PersonWidget extends StatelessWidget {
  final String asset;
  final String name;
  final Icon icon;
  final String description;
  const PersonWidget({
    Key? key,
    required String this.asset,
    required String this.name,
    required Icon this.icon,
    required String this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Container(
           height: 300,
           decoration: BoxDecoration(
             shape: BoxShape.circle,
             image: DecorationImage(
               image: AssetImage(asset),
             ),

           ),
         ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: icon,
                ),
                Text(name,
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.purple,
                  fontFamily: "Arial",
                  fontWeight: FontWeight.bold
                ),),
              ],
            ),
          ),
        ),

        SizedBox(
          width: 200,
          child: Container(
            alignment: Alignment.center,
            color: Colors.purple,
            child: Text(
              description,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
