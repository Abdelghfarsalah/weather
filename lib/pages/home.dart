import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/states.dart';
import 'package:weather_app/cubits/weather_cubit.dart';
import 'searche.dart';
import '../models/weathermodel.dart';

class home1 extends StatelessWidget {
  Widget build(BuildContext context) {
    return BlocBuilder<weatherCubit,parent>(
      
      builder:(context,state){
        if(state is failed)
        {
            return Scaffold(
              appBar: AppBar(
                title: Text('Search for any city '),
                centerTitle: true,
                actions: [IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) {
                    return search();
                  })));
                }, icon: Icon(Icons.search))
                
                ],
              ),
              body: Center(child: Text("there  is a wrong")),
            );
        }
        else if(state is success)
        {
          weathermodel? weathredata=BlocProvider.of<weatherCubit>(context).weatherDay;
          return Scaffold(
            body: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.blueGrey,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 50),
                      child: Column(children: [
                        Row(
                        children: [
                          Text(" صل علي النبي محمد",style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),),
                          Spacer(flex: 1,),
                          IconButton(
                          color: Colors.black,
                          icon: Icon(Icons.search),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return search();
                            }));
                          },
                        ),
                        ],
                      )
                      ],)
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                        "${BlocProvider.of<weatherCubit>(context).name}",
                        style: TextStyle(
                            fontSize: 70,
                            fontWeight: FontWeight.bold,
                            ///fontFamily:"Pacifico" ,
                            color: Colors.black),
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 20),child: Text(
                        "Updated: ${weathredata!.data1} ",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),),
                      Spacer(
                        flex: 1,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.only(topLeft: Radius.circular(100)),
                            color: Colors.white),
                        height: 400,
                        child: Expanded(
                          child: Column(
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
                                      child:CircleAvatar(radius: 40,
                                      child: CircleAvatar(
                                        radius: 40,
                                        backgroundImage: AssetImage("images/113.webp"),
                                      ),
                                      ),
                                    ),
                                    Spacer(
                                      flex: 1,
                                    ),
                                    Padding(padding: EdgeInsets.symmetric(horizontal:50 ),child: Column(
                                      children: [
                                        Text("temperature"),
                                        Text("${weathredata!.temp}", style: TextStyle(
                                            fontSize: 35,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),)
                                      ],
                                    ),),
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
                              Divider(
                                thickness: 2,
                                color: Colors.grey,
                                indent: 60,
                                endIndent: 60,
                              ),
                              Center(
                                child: Text("mintemp:                  ${weathredata!.mintemp} ",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black)),
                              ),
                              Center(
                                child: Text("maxtemp:                   ${weathredata!.maxtemp}",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black)),
                              ),
                              Divider(
                                thickness: 2,
                                color: Colors.grey,
                                indent: 60,
                                endIndent: 60,
                              ),
                              Column(
                                children: [
                                  Padding(padding: EdgeInsets.symmetric(horizontal: 0,vertical: 10),child: 
                              Text(
                                "weatherState",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),),
                                  Padding(padding: EdgeInsets.only(top: 5),child: 
                              Text(
                                weathredata?.weatherStateName??"ي مسملم دخل مدينه نعرفها",
                                style: TextStyle(
                                    
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 39, 77, 108)),
                              ),),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5, vertical: 5),
                                          child: Container(
                                            child: CircleAvatar(
                                              backgroundColor: Colors.black,
                                              radius: 10,
                                            ),
                                          ),
                                        ),Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5, vertical: 5),
                                          child: Container(
                                            child: CircleAvatar(
                                              backgroundColor: Colors.black54,
                                              radius: 10,
                                            ),
                                          ),
                                        ),Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5, vertical: 5),
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
                      )
                    ]),
            ),
          ); }
        else if(state is getDataFromAPI)
        {
          return Center(child: CircularProgressIndicator(),) ;
        }
        else {
          return Scaffold(
            body: Container(
                decoration: BoxDecoration(),
                child: ListView(children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text("Welcome Back",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Pacifico')),
                            Text("Please Search For any City",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 17,
                                    fontFamily: 'Pacifico')),
                          ],
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        IconButton(
                          color: Colors.black,
                          icon: Icon(Icons.search),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return search();
                            },),);
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 50),
                    child: CircleAvatar(
                      radius: 120,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage("pngtree-rainy-weather-image_2246764.jpg"),
                        radius: 120,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 0),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(150)),
                            color: Colors.blue),
                        height: 400,
                        child: Column(
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
                                    child:CircleAvatar(radius: 40,
                                    child: CircleAvatar(
                                      radius: 40,
                                      backgroundImage: AssetImage("images/113.webp"),
                                    ),
                                    ),
                                  ),
                                  Spacer(flex: 1,),
                                  Text("صل علي النبي ي مسلم",
                                  style: TextStyle(
                                    fontSize: 18,fontWeight: FontWeight.bold
    
                                  ),
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
                            Padding(padding: EdgeInsets.symmetric(horizontal: 20),child:  Text("إِنَّ فِي خَلْقِ السَّمَاوَاتِ وَالْأَرْضِ وَاخْتِلَافِ اللَّيْلِ وَالنَّهَارِ وَالْفُلْكِ الَّتِي تَجْرِي فِي الْبَحْرِ بِمَا يَنْفَعُ النَّاسَ وَمَا أَنْزَلَ اللَّهُ مِنَ السَّمَاءِ مِنْ مَاءٍ فَأَحْيَا بِهِ الْأَرْضَ بَعْدَ مَوْتِهَا وَبَثَّ فِيهَا مِنْ كُلِّ دَابَّةٍ وَتَصْرِيفِ الرِّيَاحِ وَالسَّحَابِ الْمُسَخَّرِ بَيْنَ السَّمَاءِ وَالْأَرْضِ لَآيَاتٍ لِقَوْمٍ يَعْقِلُونَ",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                            ),),
                            Spacer(flex: 1,),
                            Row(
                              children: [
                                Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal:5, vertical: 20),
                                        child: Container(
                                          child: CircleAvatar(
                                            backgroundColor: Colors.black,
                                            radius: 10,
                                          ),
                                        ),
                                      ),Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 5),
                                        child: Container(
                                          child: CircleAvatar(
                                            backgroundColor: Colors.black54,
                                            radius: 10,
                                          ),
                                        ),
                                      ),Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 5),
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
                    
                  )
                ]),
              )
        ,
          );}
        }
        );
    }
    }

