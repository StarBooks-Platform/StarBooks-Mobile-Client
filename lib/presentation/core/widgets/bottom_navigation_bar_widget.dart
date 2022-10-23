import 'dart:developer';

import 'package:floating_bottom_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar(
      bottomBarItems: [
        BottomBarItemsModel(
          icon: const Icon(
            Icons.home,
            size: 20,
          ),
          iconSelected: const Icon(
            Icons.home,
            color: AppColors.cherryRed,
            size: 20,
          ),
          title: 'Home',
          dotColor: AppColors.cherryRed,
          onTap: () => log('Home'),
        ),
        BottomBarItemsModel(
          icon: const Icon(
            Icons.search,
            size: 20,
          ),
          iconSelected: const Icon(
            Icons.search,
            color: AppColors.cherryRed,
            size: 20,
          ),
          title: 'Search',
          dotColor: AppColors.cherryRed,
          onTap: () => log('Search'),
        ),
        BottomBarItemsModel(
          icon: const Icon(
            Icons.person,
            size: 20,
          ),
          iconSelected: const Icon(
            Icons.person,
            color: AppColors.cherryRed,
            size: 20,
          ),
          title: 'Person',
          dotColor: AppColors.cherryRed,
          onTap: () => log('Person'),
        ),
        BottomBarItemsModel(
          icon: const Icon(
            Icons.settings,
            size: 20,
          ),
          iconSelected: const Icon(
            Icons.settings,
            color: AppColors.cherryRed,
            size: 20,
          ),
          title: 'Settings',
          dotColor: AppColors.cherryRed,
          onTap: () => log('Settings'),
        ),
      ],
      bottomBarCenterModel: BottomBarCenterModel(
        centerBackgroundColor: AppColors.cherryRed,
        centerIcon: const FloatingCenterButton(
          child: Icon(
            Icons.menu,
            color: AppColors.white,
          ),
        ),
        centerIconChild: [
          FloatingCenterButtonChild(
            child: const Icon(
              Icons.list,
              color: AppColors.white,
            ),
            onTap: () {},
          ),
          FloatingCenterButtonChild(
            child: const Icon(
              Icons.grid_view,
              color: AppColors.white,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
