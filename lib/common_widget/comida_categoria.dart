import 'package:biusrat_app_fitness/common/color.dart';
import 'package:flutter/material.dart';

class CategoriaComida extends StatelessWidget {
  final Map cObj;
  final int index;
  const CategoriaComida({super.key, required this.index, required this.cObj});

  @override
  Widget build(BuildContext context) {
    bool isEvent = index % 2 == 0;
    return Container(
      margin: const EdgeInsets.all(4),
      width: 80,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: isEvent
                ? [
                    BColor.primaryColor2.withOpacity(0.5),
                    BColor.primaryColor1.withOpacity(0.5)
                  ]
                : [
                    BColor.secondaryColor2.withOpacity(0.5),
                    BColor.secondaryColor1.withOpacity(0.5)
                  ],
          ),
          borderRadius:  BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          ClipRRect(
            borderRadius: BorderRadius.circular(17.5) ,
            child: Container(
              
              decoration: BoxDecoration(
                  color: BColor.white,
                  borderRadius:  BorderRadius.circular(17.5)),
          
              child: Image.asset(
                  cObj["image"].toString(),
                  width: 35,
                  height: 35,
                  fit: BoxFit.contain,
                ),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 8),
            child: Text(
              cObj["name"],
              maxLines: 1,
              style: TextStyle(
                  color: BColor.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ),
        
        ],
      ),
    );
  }
}