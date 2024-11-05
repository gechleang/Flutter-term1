import 'package:flutter/material.dart';

class FavoriteCard extends StatefulWidget {
  final String title;
  final String description;

  const FavoriteCard({super.key, required this.title, required this.description});

  @override
  _FavoriteCardState createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    widget.title,
                    style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),
                IconButton(
                  onPressed: toggleFavorite,
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Text(widget.description),
          ],
        ),
      ),
    );
  }
}