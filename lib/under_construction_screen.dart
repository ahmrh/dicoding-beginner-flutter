import 'package:flutter/material.dart';
import 'package:mangareader/model/manga.dart';

class UnderConstructionScreen extends StatelessWidget{

  const UnderConstructionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.warning_amber_rounded),
            SizedBox(height: 16,),
            Text('This Screen is Still Under Construction', style: Theme.of(context).textTheme.labelMedium,)
          ],
        ),
      ),
    );

  }

}