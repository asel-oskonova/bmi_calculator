import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({
    required this.icon,
    required this.text,
    required this.onTap,
    required this.isActive,
    super.key,
  });

  final IconData icon;
  final String text;
  final void Function()? onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Column(
            children: [
              Icon(icon, size: 65, 
              color: isActive ? Theme.of(context).colorScheme.primary : null,),
              const SizedBox(height: 5,), 
              Text(text, style:  TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: isActive ? Theme.of(context).colorScheme.primary : null
                ),),
            ],
          ),
        ),
      ),
    );
  }
}