import 'package:flutter/material.dart';
import 'package:mangareader/model/manga.dart';
import 'package:mangareader/under_construction_screen.dart';


class DetailScreen extends StatelessWidget{
  final Manga manga;
  const DetailScreen({super.key, required this.manga});

  @override
  Widget build(BuildContext context) {
    return UnderConstructionScreen();
  }

}