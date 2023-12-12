import 'package:dio/dio.dart';

class ApiClient {
  final Dio _dio = Dio();

  Future<dynamic> getVideo() async{
    const url = 'https://youtube.googleapis.com/youtube/v3/videos?part=snippet%2CcontentDetails%2Cstatistics%2Cplayer&chart=mostPopular&maxResults=100&regionCode=In&key=AIzaSyA6hI_egrpWFQgL231-r9Z7kBoSut40xoc';

  final Response response = await  _dio.get(url);
  return response.data ;
  }
}