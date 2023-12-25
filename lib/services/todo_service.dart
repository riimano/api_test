import 'package:dio/dio.dart';

class TodoService {
  final String serverUrl = "https://calm-plum-jaguar-tutu.cyclic.app/todos";
  final _dio = Dio();

  Future<Response> getTodosList() async {
    try {
      Response<dynamic> responseValue = await _dio.get(serverUrl);
      if (responseValue.statusCode == 200) {
        List list = responseValue.data('data');
      }
      return responseValue;
    } catch (e) {
      throw e.toString();
    }
  }
}
