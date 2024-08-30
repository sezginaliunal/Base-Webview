class ApiUrls {
  factory ApiUrls() {
    return _instance;
  }

  ApiUrls._privateConstructor();

  static final ApiUrls _instance = ApiUrls._privateConstructor();

  static const String baseUrl = 'https://jsonplaceholder.typicode.com';

  String getTodos() => '$baseUrl/todos';
}
