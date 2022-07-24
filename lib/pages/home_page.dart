import 'package:coffee_app/pages/utilit/coffee_title.dart';
import 'package:coffee_app/pages/utilit/coffee_types.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List coffeTypes = [
    [
      'Machiatto',
      true,
    ],
    [
      'Spresso',
      false,
    ],
    [
      'Trukey with milk',
      false,
    ],
    [
      'Cappuchino',
      false,
    ],
  ];

  void coffeTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < coffeTypes.length; i++) {
        coffeTypes[i][1] = false;
      }
      coffeTypes[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.menu),
          actions: [
            Icon(Icons.person),
            Padding(padding: EdgeInsets.only(right: 30))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ""),
        ]),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(children: [
              //find the best coffee
              Text(
                'Find the best coffee for you',
                style: GoogleFonts.bebasNeue(
                  fontSize: 40,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              //Search bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Find Your Coffee Here...',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade200),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade200),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),

              //horizontal listview of coffee Types

              Container(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: coffeTypes.length,
                  itemBuilder: (context, index) {
                    return CoffeType(
                      coffeTypes: coffeTypes[index][0],
                      isSeclected: coffeTypes[index][1],
                      onTap: () {
                        coffeTypeSelected(index);
                      },
                    );
                  },
                ),
              ),

              //horizontal listview of coffee titles
              Expanded(
                  child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CoffeeTitle(
                    coffeeImageOath: 'lib/images/macchiato.jpg',
                    coffeeName: "Machiatto",
                    price: '4.65',
                  ),
                  CoffeeTitle(
                    coffeeImageOath: 'lib/images/macchiato.jpg',
                    coffeeName: "Spresso",
                    price: '4.5',
                  ),
                  CoffeeTitle(
                    coffeeImageOath: 'lib/images/macchiato.jpg',
                    coffeeName: "Turkey",
                    price: '6.65',
                  ),
                ],
              ))
            ])));
  }
}
