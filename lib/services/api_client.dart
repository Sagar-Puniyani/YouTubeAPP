import 'package:dio/dio.dart';

class ApiClient{
  Dio _dio = Dio();

  getVideo(){
    const URL = 'https://youtube.googleapis.com/youtube/v3/videos?part=snippet%2CcontentDetails%2Cstatistics%2Cplayer&chart=mostPopular&maxResults=100&regionCode=In&key=AIzaSyA6hI_egrpWFQgL231-r9Z7kBoSut40xoc';

    _dio.get(URL);
  }
}