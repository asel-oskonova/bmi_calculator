import 'package:flutter/material.dart';

class HeightCard extends StatelessWidget {
  const HeightCard({
    required this.value,
    this.onChanged,
    super.key,
  });

 final double value;
 final void Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Card(
     child:  Padding(
       padding: const EdgeInsets.all(20),
       child: Column(
        children: [
         Text(
          'БОЙ',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
             color: Theme.of(context).colorScheme.tertiary),
        ),
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              '${value.toInt()}',
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w800,
                ),),
            Text(
              'cm',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                height: 2,
                color: Theme.of(context).colorScheme.tertiary),),
          ],
        ),
        Slider.adaptive(
          min: 50,
          value: value, 
          max: 270,
          onChanged: onChanged),
       ],),
     )
    );
  }
}
