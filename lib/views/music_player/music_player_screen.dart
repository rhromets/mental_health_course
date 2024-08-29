import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:mental_health_course/theme/theme.dart';

class MusicPlayerScreen extends StatelessWidget {
  const MusicPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset('assets/images/down-arrow.png'),
          ),
        ),
        actions: [
          Image.asset('assets/images/playlist-icon.png'),
          const SizedBox(width: 25),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 15,
          right: 25,
          left: 25,
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/illustration.png',
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Rain On Glass',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              'By: Painting with Passion',
              style: Theme.of(context).textTheme.labelSmall,
            ),
            const Spacer(),
            ProgressBar(
              progress: const Duration(seconds: 1),
              total: const Duration(seconds: 5),
              baseBarColor: DefaultColors.lightpink,
              thumbColor: DefaultColors.pink,
              progressBarColor: DefaultColors.pink,
              onSeek: (duration) {
                debugPrint('user selected a new time: $duration');
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shuffle,
                    color: DefaultColors.pink,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.skip_previous,
                    color: DefaultColors.pink,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.pause_circle_filled,
                    size: 80,
                    color: DefaultColors.pink,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.skip_next,
                    color: DefaultColors.pink,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.repeat,
                    color: DefaultColors.pink,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
