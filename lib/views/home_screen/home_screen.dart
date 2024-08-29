import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mental_health_course/views/meditation/meditation_screen.dart';
import 'package:mental_health_course/views/music_player/music_player_screen.dart';
import 'package:mental_health_course/views/playlist/playlist_screen.dart';
import 'package:mental_health_course/widgets/bottom_nav_bar/bloc/navigation_bloc.dart';
import 'package:mental_health_course/widgets/bottom_nav_bar/bloc/navigation_state.dart';
import 'package:mental_health_course/widgets/bottom_nav_bar/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Widget> pages = [
    const MeditationScreen(),
    const MusicPlayerScreen(),
    PlaylistScreen(),
    const Scaffold(
      body: Center(child: Text('Navigation screen 4')),
    ),
  ];

  BottomNavigationBarItem createBottomNavItem({
    required String assetName,
    required String activeAssetName,
    required bool isActive,
    required BuildContext context,
  }) {
    if (isActive) {
      assetName = activeAssetName;
    }
    return BottomNavigationBarItem(
      icon: Image.asset(
        assetName,
        height: 45,
      ),
      label: '',
      backgroundColor: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) {
          if (state is NavigationChangedState) {
            return pages[state.index];
          }
          return pages[0];
        },
      ),
      bottomNavigationBar: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) {
          int currentIndex = 0;
          if (state is NavigationChangedState) {
            currentIndex = state.index;
          }

          final List<BottomNavigationBarItem> bottomNavItems = [
            createBottomNavItem(
              assetName: 'assets/images/home-nav-icon.png',
              activeAssetName: 'assets/images/home-active-nav-icon.png',
              context: context,
              isActive: currentIndex == 0,
            ),
            createBottomNavItem(
              assetName: 'assets/images/sound-nav-icon.png',
              activeAssetName: 'assets/images/sound-active-nav-icon.png',
              context: context,
              isActive: currentIndex == 1,
            ),
            createBottomNavItem(
              assetName: 'assets/images/persons-nav-icon.png',
              activeAssetName: 'assets/images/persons-active-nav-icon.png',
              context: context,
              isActive: currentIndex == 2,
            ),
            createBottomNavItem(
              assetName: 'assets/images/settings-nav-icon.png',
              activeAssetName: 'assets/images/settings-active-nav-icon.png',
              context: context,
              isActive: currentIndex == 3,
            ),
          ];

          return BottomNavBar(
            items: bottomNavItems,
            currentIndex: currentIndex,
          );
        },
      ),
    );
  }
}
