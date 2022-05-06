import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatelessWidget {
  String title;
  Home({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD3D0CB),
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
          onPressed: () {
            //Do some other shit
          },
        ),
        title: Text(title),
        titleTextStyle: Theme.of(context).textTheme.headline6,
        centerTitle: false,
        backgroundColor: const Color(0xffF6F5F4),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/star_light.svg"),
            onPressed: () {
              // do something
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
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Wrap(
            //scrollDirection: Axis.vertical,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        //padding: const EdgeInsets.all(8.0),
                        padding: const EdgeInsets.only(top: 17),
                        child: Container(
                          height: 85,
                          width: 93,
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                      ),
                      const Text("BARK"),
                    ],
                  ),
                  width: 131,
                  height: 148,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                    color: Color(0xffF6F5F4),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
              ),



//répétion pour tester le wrap
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        //padding: const EdgeInsets.all(8.0),
                        padding: const EdgeInsets.only(top: 17),
                        child: Container(
                          height: 85,
                          width: 93,
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                      ),
                      const Text("BARK"),
                    ],
                  ),
                  width: 131,
                  height: 148,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                    color: Color(0xffF6F5F4),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        //padding: const EdgeInsets.all(8.0),
                        padding: const EdgeInsets.only(top: 17),
                        child: Container(
                          height: 85,
                          width: 93,
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                      ),
                      const Text("BARK"),
                    ],
                  ),
                  width: 131,
                  height: 148,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                    color: Color(0xffF6F5F4),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        //padding: const EdgeInsets.all(8.0),
                        padding: const EdgeInsets.only(top: 17),
                        child: Container(
                          height: 85,
                          width: 93,
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                      ),
                      const Text("BARK"),
                    ],
                  ),
                  width: 131,
                  height: 148,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                    color: Color(0xffF6F5F4),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        //padding: const EdgeInsets.all(8.0),
                        padding: const EdgeInsets.only(top: 17),
                        child: Container(
                          height: 85,
                          width: 93,
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                      ),
                      const Text("BARK"),
                    ],
                  ),
                  width: 131,
                  height: 148,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                    color: Color(0xffF6F5F4),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        //padding: const EdgeInsets.all(8.0),
                        padding: const EdgeInsets.only(top: 17),
                        child: Container(
                          height: 85,
                          width: 93,
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                      ),
                      const Text("BARK"),
                    ],
                  ),
                  width: 131,
                  height: 148,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                    color: Color(0xffF6F5F4),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        //padding: const EdgeInsets.all(8.0),
                        padding: const EdgeInsets.only(top: 17),
                        child: Container(
                          height: 85,
                          width: 93,
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                      ),
                      const Text("BARK"),
                    ],
                  ),
                  width: 131,
                  height: 148,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                    color: Color(0xffF6F5F4),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        //padding: const EdgeInsets.all(8.0),
                        padding: const EdgeInsets.only(top: 17),
                        child: Container(
                          height: 85,
                          width: 93,
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                      ),
                      const Text("BARK"),
                    ],
                  ),
                  width: 131,
                  height: 148,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                    color: Color(0xffF6F5F4),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
