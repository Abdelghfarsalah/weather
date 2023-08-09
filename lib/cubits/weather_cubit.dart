import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/states.dart';
import 'package:weather_app/models/weathermodel.dart';
import '../models/weathermodel.dart';
import '../services/weather.dart';
class weatherCubit extends Cubit<parent>{
  weatherservice services;
  weathermodel? weatherDay;
  String? name;
    weatherCubit(this.services):super(intialstate());
  void getweathre ({required String cityname})async{
    emit(getDataFromAPI());
    
    weatherDay=  await services.getweathre(cityname: cityname);
    if(weatherDay!=null)
    emit(success());
    else
      emit(failed());
    
  }
}