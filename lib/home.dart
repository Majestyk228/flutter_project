import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:thefruityshaker/pages/favorite_page.dart';

//import 'package:thefruityshaker/components/cards.dart';
import 'constants.dart' as Constants;
import 'pages/home_page.dart';
import 'pages/cocktail_page.dart';
import 'pages/fruit_page.dart';
import 'pages/about_page.dart';
//import 'pages/error_page.dart';

class Home extends StatefulWidget {
  final String title;

  const Home({Key? key, required this.title}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  late Widget child;
  var favCocktails =[] ;
  var favFruits =[];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    switch (_selectedIndex) {
      //navigation pour la ✨bottom nav bar✨
      case 0:
        child = HomeWidget();
        break;
      case 1:
        child = CocktailWidget();
        break;
      case 2:
        child = FruitWidget();
        break;
      case 3:
        child = AboutWidget();
        break;

    }

    return Scaffold(
      backgroundColor: const Color(0xffD3D0CB),
      appBar: AppBar(
        /*leading: IconButton(
          icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
          onPressed: () {
            //Do some other shit
          },
        ),*/
        title: Text(widget.title),
        titleTextStyle: Theme.of(context).textTheme.headline6,
        centerTitle: false,
        backgroundColor: const Color(0xffF6F5F4),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/star_light.svg"),
            onPressed: () {
              // do something
              child=FavoriteWidget();
            },
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/home_light.svg"),
            activeIcon: SvgPicture.asset("assets/icons/home_fill.svg"),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/drink_light.svg"),
            activeIcon: SvgPicture.asset("assets/icons/drink_fill.svg"),
            label: 'Cocktails',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/orange_light.svg"),
            activeIcon: SvgPicture.asset("assets/icons/orange_fill.svg"),
            label: 'Fruits',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/info_light.svg"),
            activeIcon: SvgPicture.asset("assets/icons/info_fill.svg"),
            label: 'À Propos',
          ),
        ],
        elevation: 10,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: child,
    );
  }
}
