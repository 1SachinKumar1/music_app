import 'package:flutter/material.dart';
import 'package:music_app/Models/PlaylistsModel.dart';
import 'package:music_app/Widgets/Song_Card.dart';
import '../../Models/SongModel.dart';
import '../../Widgets/Playlists.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  List<Song> songs = Song.songs;
  List<Playlist> playlists = Playlist.playlists;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.deepPurple.shade900.withOpacity(0.8),
          Colors.deepPurple.shade300.withOpacity(0.8),
        ],
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(Icons.grid_view_rounded),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 20),
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1593769632597-e1c3dc2a9a93?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGxpc3RlbmluZyUyMG11c2ljfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60"),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.deepPurple.shade600,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
              label: "Play",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box),
              label: "song",
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  "Welcome",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0, top: 10),
                child: Text(
                  "Enjoy your favorite music",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: SizedBox(
                  width: 380,
                  child: TextFormField(
                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.grey.shade400,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Search",
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey.shade400,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        )),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 15),
                    child: Text(
                      "Trending Music",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text("View More",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.27,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: songs.length,
                    itemBuilder: (context, index) {
                      return SongCard(song: songs[index]);
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 10),
                    child: Text(
                      "Playlists",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 10),
                    child: Text("View More",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Playlists(playlists: playlists),
            ],
          ),
        ),
      ),
    );
  }
}
