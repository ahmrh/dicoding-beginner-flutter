import 'package:flutter/material.dart';
import 'package:mangareader/components.dart';
import 'package:mangareader/model/manga.dart';
import 'package:mangareader/under_construction_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const UnderConstructionScreen();
              }));
            },
            icon: const Icon(Icons.notifications),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Read your favorite manga here',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 32),
            Text(
              'Trending Today',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            const TrendingMangaSection(),
            const SizedBox(height: 32),
            const Expanded(
              child: AllMangaSection(),
            ),
          ],
        ),
      ),
    );
  }
}

class TrendingMangaSection extends StatelessWidget {
  const TrendingMangaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: trendingMangaList.map((manga) {
          return Container(
            padding: const EdgeInsets.only(right: 8),
            child: MangaCard(
              manga: manga,
            ),
          );
        }).toList(),
      ),
    );
  }
}

class AllMangaSection extends StatefulWidget {
  const AllMangaSection({super.key});

  @override
  State<AllMangaSection> createState() => _AllMangaSectionState();
}

class _AllMangaSectionState extends State<AllMangaSection> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  selected = 0;
                });
              },
              child: Text(
                'Latest Update',
                style: selected == 0
                    ? Theme.of(context).textTheme.titleMedium
                    : Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  selected = 1;
                });
              },
              child: Text(
                'Most Popular',
                style: selected == 1
                    ? Theme.of(context).textTheme.titleMedium
                    : Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  selected = 2;
                });
              },
              child: Text(
                'Newcomers',
                style: selected == 2
                    ? Theme.of(context).textTheme.titleMedium
                    : Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
        Expanded(
          child: AllMangaList(
            selected: selected,
          ),
        )
      ],
    );
  }
}

class AllMangaList extends StatelessWidget {
  final int selected;

  const AllMangaList({super.key, required this.selected});

  @override
  Widget build(BuildContext context) {
    switch (selected) {
      case 0:
        return ListView(
          children: latestMangaList.map((manga) {
            return MangaItem(
              manga: manga,
            );
          }).toList(),
        );

      case 1:
        return ListView(
          children: popularMangaList.map((manga) {
            return MangaItem(
              manga: manga,
            );
          }).toList(),
        );

      default:
        return ListView(
          children: newMangaList.map((manga) {
            return MangaItem(
              manga: manga,
            );
          }).toList(),
        );
    }
  }
}
