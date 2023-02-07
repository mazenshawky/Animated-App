import 'package:rive/rive.dart';

import '../core/utils/app_assets.dart';

class RiveIcon {
  final String artboard, stateMachineName, title, src;
  late SMIBool? input;

  RiveIcon({
    required this.artboard,
    required this.stateMachineName,
    required this.title,
    required this.src,
    this.input,
  });

  set setInput(SMIBool status) {
    input = status;
  }
}

List<RiveIcon> bottomNavs = [
  RiveIcon(
    src: RiveAssets.icons,
    artboard: 'CHAT',
    stateMachineName: 'CHAT_Interactivity',
    title: 'Chat',
  ),
  RiveIcon(
    src: RiveAssets.icons,
    artboard: 'SEARCH',
    stateMachineName: 'SEARCH_Interactivity',
    title: 'Search',
  ),
  RiveIcon(
    src: RiveAssets.icons,
    artboard: 'TIMER',
    stateMachineName: 'TIMER_Interactivity',
    title: 'Timer',
  ),
  RiveIcon(
    src: RiveAssets.icons,
    artboard: 'BELL',
    stateMachineName: 'BELL_Interactivity',
    title: 'Notifications',
  ),
  RiveIcon(
    src: RiveAssets.icons,
    artboard: 'USER',
    stateMachineName: 'USER_Interactivity',
    title: 'Profile',
  ),
];

List<RiveIcon> sideMenus = [
  RiveIcon(
    src: RiveAssets.icons,
    artboard: 'HOME',
    stateMachineName: 'HOME_interactivity',
    title: 'Home',
  ),
  RiveIcon(
    src: RiveAssets.icons,
    artboard: 'SEARCH',
    stateMachineName: 'SEARCH_Interactivity',
    title: 'Search',
  ),
  RiveIcon(
    src: RiveAssets.icons,
    artboard: 'LIKE/STAR',
    stateMachineName: 'STAR_Interactivity',
    title: 'Favorites',
  ),
  RiveIcon(
    src: RiveAssets.icons,
    artboard: 'CHAT',
    stateMachineName: 'CHAT_Interactivity',
    title: 'Help',
  ),
];

List<RiveIcon> sideMenus2 = [
  RiveIcon(
    src: RiveAssets.icons,
    artboard: 'TIMER',
    stateMachineName: 'TIMER_Interactivity',
    title: 'History',
  ),
  RiveIcon(
    src: RiveAssets.icons,
    artboard: 'BELL',
    stateMachineName: 'BELL_Interactivity',
    title: 'Notifications',
  ),
];
