import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:socity/common/utils/appcolors.dart';

class Checkboxx extends StatefulWidget {
  String? texxt;
   Checkboxx({required this.texxt});

  @override
  State<Checkboxx> createState() => _CheckboxxState();
}

class _CheckboxxState extends State<Checkboxx> {
  
      bool values = false;

  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;
    return Row(children: [
      Checkbox(
              activeColor: const  Color(AppColors.titleText),
              value: values,
              onChanged: (values) {
                setState(() {
                  this.values = values!;
                });
              },
            ),
           
             Text(
                widget.texxt!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Color(AppColors.titleText),
                    fontSize: 18,
                    ),
              ),
    ],);
  }
}