abstract class ApiConsumer {
  Future<dynamic> get({required String path, Map<String, dynamic>? query});
  Future<dynamic> post(
      {required String path,
      Map<String, dynamic>? query,
      Map<String, dynamic>? body});
}
