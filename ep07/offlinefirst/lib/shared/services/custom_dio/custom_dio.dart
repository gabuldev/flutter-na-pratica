import 'package:dio/native_imp.dart';
import 'package:offlinefirst/shared/services/custom_dio/interceptors/cache_interceptor.dart';

class CustomDio extends DioForNative {
  CustomDio() {
    options.baseUrl = "https://jsonplaceholder.typicode.com";
    interceptors.add(CacheInterceptor());
  }
}
