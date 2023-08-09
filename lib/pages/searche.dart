import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:weather_app/cubits/weather_cubit.dart';

class search extends StatelessWidget {
  String? cityname;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        title: Text(
          "Search a city",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
          child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 102,
              child: CircleAvatar(
                backgroundImage: AssetImage(
                    "FIR_ITV_RuralFireRisk_Weather_CloudySky_123RF_901534.jpg"),
                radius: 100,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            child: TextField(
              onSubmitted: (data) async {
                cityname = data;
                BlocProvider.of<weatherCubit>(context).getweathre(cityname: cityname!);
                BlocProvider.of<weatherCubit>(context).name=cityname;
                Navigator.pop(context);
              },
              decoration: InputDecoration(
                  hintText: "Enter any city",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  label: Text("Search"),
                  contentPadding: EdgeInsets.all(30),
                  suffixIcon: Icon(Icons.search)),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(100)),
                color: Colors.blue.shade200),
            height: 500,
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Image(image: AssetImage("pngtree-rainy-weather-image_2246764.jpg"),
                      // ),
                      Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: CircleAvatar(
                          radius: 40,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage("images/113.webp"),
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                        "صل علي النبي ي مسلم",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Spacer(
                        flex: 1,
                      ),

                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            child: Container(
                              child: CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 10,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            child: Container(
                              child: CircleAvatar(
                                backgroundColor: Colors.black54,
                                radius: 10,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            child: Container(
                              child: CircleAvatar(
                                backgroundColor: Colors.black45,
                                radius: 10,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "إِنَّ فِي خَلْقِ السَّمَاوَاتِ وَالْأَرْضِ وَاخْتِلَافِ اللَّيْلِ وَالنَّهَارِ وَالْفُلْكِ الَّتِي تَجْرِي فِي الْبَحْرِ بِمَا يَنْفَعُ النَّاسَ وَمَا أَنْزَلَ اللَّهُ مِنَ السَّمَاءِ مِنْ مَاءٍ فَأَحْيَا بِهِ الْأَرْضَ بَعْدَ مَوْتِهَا وَبَثَّ فِيهَا مِنْ كُلِّ دَابَّةٍ وَتَصْرِيفِ الرِّيَاحِ وَالسَّحَابِ الْمُسَخَّرِ بَيْنَ السَّمَاءِ وَالْأَرْضِ لَآيَاتٍ لِقَوْمٍ يَعْقِلُونَ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                      child: Container(
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 10,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      child: Container(
                        child: CircleAvatar(
                          backgroundColor: Colors.black54,
                          radius: 10,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      child: Container(
                        child: CircleAvatar(
                          backgroundColor: Colors.black45,
                          radius: 10,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
