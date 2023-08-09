

class weathermodel {
  String data1;
  double temp;
  double mintemp;
  double maxtemp;
  String weatherStateName;
  weathermodel(
      {required this.data1,
      required this.temp,
      required this.mintemp,
      required this.maxtemp,
      required this.weatherStateName,
    });
  factory weathermodel.fromJson(dynamic data) {
    return weathermodel(
        data1: data['location']['localtime'],
        temp: data['forecast']['forecastday'][0]['day']['avgtemp_c'],
        mintemp: data['forecast']['forecastday'][0]['day']['mintemp_c'],
        maxtemp: data['forecast']['forecastday'][0]['day']['maxtemp_c'],
        weatherStateName: data['forecast']['forecastday'][0]['day']['condition']['text'],
        );
  }

}
