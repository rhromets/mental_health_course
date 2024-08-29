import 'package:flutter/material.dart';
import 'package:mental_health_course/views/music_player/music_player_screen.dart';

class PlaylistScreen extends StatelessWidget {
  PlaylistScreen({super.key});
  final List<Map<String, String>> songs = [
    {
      'title': 'Rain On Glass',
      'artist': 'Paiting with Passion',
      'thumbnail': 'assets/images/illustration.png',
    },
    {
      'title': 'Gentle Breeze',
      'artist': 'Soothing Sounds',
      'thumbnail': 'assets/images/illustration.png',
    },
    {
      'title': 'Whispering Pines',
      'artist': 'Nature Vibes',
      'thumbnail': 'assets/images/illustration.png',
    },
    {
      'title': 'Ocean Waves Breeze',
      'artist': 'Soothing Sounds',
      'thumbnail': 'assets/images/illustration.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chill Playlist',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        elevation: 2,
      ),
      body: ListView.builder(
        itemCount: songs.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(songs[index]['thumbnail']!),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
            title: Text(
              songs[index]['title']!,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            subtitle: Text(
              songs[index]['artist']!,
              style: Theme.of(context).textTheme.labelSmall,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MusicPlayerScreen(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
