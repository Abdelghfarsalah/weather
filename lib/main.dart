import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/models/weathermodel.dart';

import 'package:weather_app/services/weather.dart';
import 'pages/home.dart';
import 'cubits/weather_cubit.dart';
void main()
{
  runApp(BlocProvider(
      create: (context) {
        return weatherCubit(weatherservice());
      },
      child:weatherapp()));
}
class weatherapp extends StatelessWidget {
  
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home1(),
    );
  }
}