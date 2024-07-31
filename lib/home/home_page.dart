
import 'dart:developer';

import 'package:bmi_calculator/components/gender_card.dart';
import 'package:bmi_calculator/components/height_card.dart';
import 'package:bmi_calculator/components/valuemodifier_card.dart';
import 'package:flutter/material.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool isMale = true;
  int height = 175;
  int weight = 60;
  int age = 25;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ДЕНЕ САЛМАК ЭСЕПТЕГИЧ'),
        centerTitle: true,
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child:  Column(
          children: [
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: GenderCard(
                    icon: Icons.male,
                    isActive: isMale,
                    text: 'ЭРКЕК',
                    onTap: () {
                      isMale = true;
                      setState(() {
                        
                      });
                    },
                    ),
                ),
                const SizedBox(width: 20,),
                Expanded(
                  child: GenderCard(
                    icon: Icons.female,
                    isActive: !isMale,
                    text: 'АЯЛ',
                    onTap: () {
                      isMale = false;
                      setState(() {
                        
                      });
                    },
                    ),
                )
              ],
            ),
            const SizedBox(height: 20,),
            HeightCard(
              value: height.toDouble(),
              onChanged: (v){
                height = v.toInt();
                setState(() {
                  
                });
              },
            ),
            Row(
              children: [
                Expanded(
                  child: ValueModifierCard(
                    modifierName: 'САЛМАК',
                    modifierValue: weight,
                    onIncrement: () {
                      weight++;
                      setState(() {
                        
                      });
                    },
                    onDecrement: () {
                      weight--;
                      setState(() {
                        });
                    },
                  ),
                ),
                const SizedBox(width: 20,),
                Expanded(
                  child: ValueModifierCard(
                    modifierName: 'ЖАШ',
                    modifierValue: age,
                    onIncrement: () {
                      age++;
                      setState(() {
                        
                      });
                    },
                    onDecrement: () {
                      age--;
                      setState(() {
                        
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: ElevatedButton(
                onPressed: _calculate, 
                child: const Text('ЭСЕПТӨӨ'),
                ),
            )
          ],
        ),
      ),
    );
  }

  
void _calculate(){
  final heightInMeters = height / 100;
  final bmi = weight / (heightInMeters * heightInMeters);
  log(bmi.toString());
  _showDialog(bmi.toInt());
}

String getTitle(int bmi){
  if (bmi < 18.5) {
   return 'Аз салмактуулук'; 
  } else if(bmi < 25) {
    return 'Нормалдуу';
  }else if (bmi < 30){
    return 'Бир аз ашыкча салмактуулук';
  } else {
    return 'Ашыкча салмактуулук';
  }
}

String getDescription(int bmi){
  if (bmi < (18.5)) {
   return 'Ээх бир аз арык экенсиз. Пайдалуу тамактанып ден-соолуккка кам көрүңүз. Сиздин индексиңиз: $bmi'; 
  } else if(bmi < (25)) {
    return 'Азаматсыз!!! Ушул көрсөткүчтү карманыз. Сиздин индексиниз: $bmi';
  }else if (bmi < (30)){
    return 'Бир аз семирип баратыпсыз. Спортко кайтыныз. Сиздин индексиниз: $bmi';
  } else {
    return 'Ашыкча салмагыңыз бар. Келиңиз чогуу Спортко кайталы. Биринчи байлык ден-соолук. Сиздин индексиниз: $bmi';
}
}

String getEmoji(int bmi){
  if (bmi < 18.5) {
   return '😕'; 
  } else if(bmi < 25) {
    return '😀';
  }else if (bmi < 30){
    return '🧐';
  } else {
    return '🙄';
  }
}

void _showDialog(int bmi){
  showDialog(
    context: context, 
    builder: (context,) {
      return AlertDialog.adaptive(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text(
          getTitle(bmi),
          textAlign: TextAlign.center,
          style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500)
          ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              getEmoji(bmi),
              style: const TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold),),
            Text(
              getDescription(bmi),
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,)),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            }, 
            child: const Text('Ok'),),
        ],
      );
    });

    isMale = true;
    age = 25;
    height = 175;
    weight = 60;
    setState(() {});

}
}