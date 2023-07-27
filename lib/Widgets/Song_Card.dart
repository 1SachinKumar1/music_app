import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Models/SongModel.dart';

class SongCard extends StatelessWidget {
  const SongCard({
    super.key,
    required this.song,
  });

  final Song song;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed('/song', arguments: song);
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Container(
              margin: const EdgeInsets.only(right: 8),
              width: MediaQuery.of(context).size.width * 0.45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(
                    song.coverUrl,
                  ),
                  fit: BoxFit.cover,
                ),
              )),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 50,
            width: MediaQuery.of(context).size.width * 0.37,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: CupertinoColors.white.withOpacity(0.8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(song.title,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                            )),
                    Text(song.description,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ))
                  ],
                ),
                const Icon(
                  Icons.play_circle,
                  color: Colors.deepPurple,
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
