import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Models/PlaylistsModel.dart';

class Playlists extends StatelessWidget {
  const Playlists({
    super.key,
    required this.playlists,
  });

  final List<Playlist> playlists;

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.only(left: 20.0),
      child: Column(

        children: [
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: playlists.length,
              itemBuilder: ((context, index) {
                return InkWell(
                  onTap: (){
                    Get.toNamed("/playlists",arguments: playlists);
                  },
                  child: Container(
                    height: 75,
                    margin: const EdgeInsets.only(bottom: 10,right: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.shade900.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ClipRRect(
                          borderRadius:BorderRadius.circular(15),
                          child: Image.network(playlists[index].imageUrl,height: 50,
                            width: 50,fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 20,),
                        Expanded(
                          child:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                              Text(playlists[index].title,
                                style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
                              ),
                              Text("${playlists[index].songs.length} songs",maxLines: 2,style:Theme.of(context).textTheme.bodySmall,)
                            ],
                          ),
                        ),
                        IconButton(onPressed: () {

                        }, icon: const Icon(Icons.play_circle,color: Colors.white,),

                        )
                      ],
                    ),
                  ),
                );
              })),
        ],
      ),
    );
  }
}
