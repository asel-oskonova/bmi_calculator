import 'package:flutter/material.dart';

class ValueModifierCard extends StatelessWidget {
  const ValueModifierCard({
    required this.modifierName,
     required this.modifierValue,
     this.onIncrement,
     this.onDecrement,

    super.key,
  });

  final String modifierName;
  final int modifierValue;
  final void Function()? onIncrement;
  final void Function()? onDecrement;


  @override
  Widget build(BuildContext context) {
    return Card(
      child:Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
          Text(
            modifierName,
            style: TextStyle(
             fontSize: 20, 
             fontWeight: FontWeight.w500,
             color: Theme.of(context).colorScheme.tertiary),
             ),
           Text(
            modifierValue.toString(),
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w800),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton.filled(
                constraints: const BoxConstraints(
                  minWidth: 45,
                  minHeight: 45,
                ),
                onPressed: onDecrement, 
                icon:  const Icon(
                  Icons.remove, size: 30,)),
                  const SizedBox(width: 10,),
                IconButton.filled(
                  constraints: const BoxConstraints(
                  minWidth: 45,
                  minHeight: 45,
                ),
                iconSize: 25,
                onPressed: onIncrement, 
                icon: const Icon(Icons.add, size: 30,))
            ],
          ),
          ],),
      )
    );
  }
}
