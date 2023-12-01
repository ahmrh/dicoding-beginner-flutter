import 'package:flutter/material.dart';
import 'package:mangareader/model/manga.dart';
import 'package:mangareader/detail_screen.dart';


class GenreChip extends StatelessWidget {
  final String text;

  const GenreChip({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Container(
          color: Theme.of(context).colorScheme.surface,
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          alignment: Alignment.center,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
      ),
    );
  }
}

class MangaCard extends StatelessWidget {
  final Manga manga;

  const MangaCard({Key? key, required this.manga}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return DetailScreen(manga: manga);
        }));
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FadeInImage.assetNetwork(
                  placeholder: 'images/placeholder_img.png',
                  image: manga.imageUrl,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              manga.name,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              "by ${manga.author}",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}

class MangaItem extends StatefulWidget {
  final Manga manga;

  const MangaItem({super.key, required this.manga});

  @override
  State<MangaItem> createState() => _MangaItemState();
}

class _MangaItemState extends State<MangaItem> {
  bool isSaved = false;

  @override
  Widget build(BuildContext context) {
    Manga manga = widget.manga;

    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return DetailScreen(manga: manga);
        }));
      },
      child: Card(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FadeInImage.assetNetwork(
                  placeholder: 'images/placeholder_img.png',
                  image: widget.manga.imageUrl,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            manga.name,
                            style: Theme.of(context).textTheme.titleMedium,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            manga.author,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                      // IconButton(
                      //   onPressed: () {
                      //     setState(() {
                      //       isSaved = !isSaved;
                      //     });
                      //   },
                      //   icon: Icon(
                      //     isSaved
                      //         ? Icons.bookmark_rounded
                      //         : Icons.bookmark_outline,
                      //   ),
                      // ),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 4.0,
                    children: manga.genres.map((genre) {
                      return GenreChip(text: genre);
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
