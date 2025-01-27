import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:provider/provider.dart';
import 'package:stylesage/common/utils/kcolors.dart';
import 'package:stylesage/common/widgets/app_style.dart';
import 'package:stylesage/src/cart/views/cart_screen.dart';
import 'package:stylesage/src/entrypoint/Controller/bottom_tab_notifier.dart';
import 'package:stylesage/src/home/views/home_screen.dart';
import 'package:stylesage/src/profile/views/profile_screen.dart';
import 'package:stylesage/src/wishlist/views/wishlist_screen.dart';

class AppEntryPoint extends StatelessWidget {
  AppEntryPoint({super.key});

  List<Widget> pageList = [
    const HomePage(),
    const WishListPage(),
    const CartPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<TabIndexNotifier>(
      builder: (context, tabIndexNotifier, child) {
        return Scaffold(
          body: Stack(
            children: [
              pageList[tabIndexNotifier.index],
              Align(
                alignment: Alignment.bottomCenter,
                child: Theme(
                    data: Theme.of(context)
                        .copyWith(canvasColor: Kolors.kOffWhite),
                    child: BottomNavigationBar(
                      selectedFontSize: 12,
                      elevation: 0,
                      backgroundColor: Kolors.kOffWhite,
                      selectedLabelStyle:
                          appStyle(9, Kolors.kPrimary, FontWeight.bold),
                      showSelectedLabels: true,
                      showUnselectedLabels: false,
                      currentIndex: tabIndexNotifier.index,
                      selectedItemColor: Kolors.kPrimary,
                      unselectedItemColor: Kolors.kGray,
                      onTap: (i) {
                        tabIndexNotifier.setIndex(i);
                      },
                      unselectedIconTheme:
                          const IconThemeData(color: Colors.black38),
                      items: [
                        BottomNavigationBarItem(
                            icon: tabIndexNotifier.index == 0
                                ? const Icon(AntDesign.home,
                                    color: Kolors.kPrimary, size: 24)
                                : const Icon(AntDesign.home, size: 24),
                            label: 'Home'),
                        BottomNavigationBarItem(
                            icon: tabIndexNotifier.index == 1
                                ? const Icon(Ionicons.heart,
                                    color: Kolors.kPrimary, size: 24)
                                : const Icon(Ionicons.heart_outline, size: 24),
                            label: 'WishList'),
                        BottomNavigationBarItem(
                            icon: tabIndexNotifier.index == 2
                                ? const Badge(
                              label: Text('9'),
                                  child: Icon(MaterialCommunityIcons.shopping,
                                      color: Kolors.kPrimary, size: 24),
                                )
                                : const Badge(
                              label: Text('9'),
                                  child: Icon(MaterialCommunityIcons.shopping_outline,
                                      size: 24),
                                ),
                            label: 'Cart'),
                        BottomNavigationBarItem(
                            icon: tabIndexNotifier.index == 2
                                ? const Icon(EvilIcons.user,
                                    color: Kolors.kPrimary, size: 34)
                                : const Icon(EvilIcons.user, size: 34),
                            label: 'Profile'),
                      ],
                    )),
              )
            ],
          ),
        );
      },
    );
  }
}
