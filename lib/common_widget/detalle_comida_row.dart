import 'package:biusrat_app_fitness/common/color.dart';
import 'package:flutter/material.dart';
import 'package:dotted_dashed_line/dotted_dashed_line.dart';

class DetalleComidaRow extends StatelessWidget {
  final Map sObj;
  final bool isLast;
  const DetalleComidaRow({super.key, required this.sObj, this.isLast = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: BColor.secondaryColor1,
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  border: Border.all(color: BColor.white, width: 3),
                  borderRadius: BorderRadius.circular(9),
                ),
              ),
            ),
            if (!isLast)
              DottedDashedLine(
                  height: 50,
                  width: 0,
                  dashColor: BColor.secondaryColor1,
                  axis: Axis.vertical)
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Paso ${ sObj["no"].toString()}",
                style: TextStyle(
                  color: BColor.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500
                ),
              ),
              Text(
                sObj["detail"].toString(),
                style: TextStyle(color: BColor.gray, fontSize: 12),
              ),
            ],
          ),
        )
      ],
    );
  }
}