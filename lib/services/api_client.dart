import 'package:dio/dio.dart';

class ApiClient {
  final Dio _dio = Dio();

  Future<dynamic> getVideo() async{
    const url = 'ENTER_YOUR_API_KEY_URL';

  final Response response = await  _dio.get(url);
  print(response.data);
  print(response.data.runtimeType);
  return response.data['items'] ;
  }
}