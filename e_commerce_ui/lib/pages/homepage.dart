// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int _currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(

//       ),
//       body: Center(
//         child: Text('Page ${_currentIndex + 1}'),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//         selectedItemColor: Colors.white,
//         unselectedItemColor: Colors.white,
//         selectedLabelStyle: TextStyle(color: Colors.red),
//         unselectedLabelStyle: TextStyle(color: Colors.red),
//         items: [
//           BottomNavigationBarItem(
//             icon: _buildCustomIcon(Icons.home, _currentIndex == 0),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: _buildCustomIcon(Icons.shop, _currentIndex == 1),
//             label: 'Shop',
//           ),
//           BottomNavigationBarItem(
//             icon: _buildCustomIcon(Icons.shopping_bag, _currentIndex == 2),
//             label: 'Bag',
//           ),
//           BottomNavigationBarItem(
//             icon: _buildCustomIcon(Icons.favorite, _currentIndex == 3),
//             label: 'Favorite',
//           ),
//           BottomNavigationBarItem(
//             icon: _buildCustomIcon(Icons.person, _currentIndex == 4),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildCustomIcon(IconData icon, bool isSelected) {
//     return Stack(
//       children: [
//         Icon(
//           icon,
//           color: isSelected ? Colors.red : Colors.black,
//           size: 24,
//         ),
//         if (!isSelected)
//           Positioned.fill(
//             child: Icon(
//               icon,
//               color: Colors.transparent,
//               size: 24,
//             ),
//           ),
//       ],
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: HomePage(),
//   ));
// }

import 'package:e_commerce_ui/pages/bag_screen.dart';
import 'package:e_commerce_ui/pages/favorite_screen.dart';
import 'package:e_commerce_ui/pages/home_screen.dart';
import 'package:e_commerce_ui/pages/shop_screen.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'profile_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final contoller = PersistentTabController(initialIndex: 0);
  List<Widget> _buildScreen() {
    return [
      const HomeScreen(),
      const ShopScreen(),
      const BagScreen(),
      const FavoriteScreen(),
      const ProfileScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItem() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(
          Icons.home,
          color: Colors.red,
        ),
        inactiveIcon: Icon(
          Icons.home_outlined,
          color: Color(0xff9B9B9B),
        ),
        title: 'Home',
        textStyle: TextStyle(color: Color(0xff9B9B9B), fontSize: 10),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          Icons.shopping_cart,
          size: 30,
          color: Colors.red,
        ),
        inactiveIcon: Icon(
          Icons.shopping_cart_outlined,
          size: 30,
          color: Color(0xff9B9B9B),
        ),
        title: 'Shop',
        textStyle: TextStyle(color: Color(0xff9B9B9B), fontSize: 10),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          Icons.shopping_bag,
          color: Colors.red,
        ),
        inactiveIcon: const Icon(
          Icons.shopping_bag_outlined,
          color: Color(0xff9B9B9B),
        ),
        title: 'Bag',
        textStyle: TextStyle(color: Color(0xff9B9B9B), fontSize: 10),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          Icons.favorite,
          color: Colors.red,
        ),
        inactiveIcon: Icon(
          Icons.favorite_border,
          color: Color(0xff9B9B9B),
        ),
        title: 'Favorites',
        textStyle: TextStyle(color: Color(0xff9B9B9B), fontSize: 10),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          Icons.person,
          color: Colors.red,
        ),
        inactiveIcon: Icon(
          Icons.person_outline,
          color: Color(0xff9B9B9B),
        ),
        title: 'Profile',
        textStyle: TextStyle(color: Color(0xff9B9B9B), fontSize: 10),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreen(),
      items: _navBarItem(),
      backgroundColor: Colors.white,
      decoration: NavBarDecoration(borderRadius: BorderRadius.circular(1)),
      navBarStyle: NavBarStyle.style14,
    );
  }
}
