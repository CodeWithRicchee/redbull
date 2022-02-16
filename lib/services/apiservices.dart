import 'package:cohora_mvvm/models/profile.dart';
import 'package:dio/dio.dart';

class SearchApi {
  String url = 'https://api.cohora.net/search/v1/search';
  Dio? _dio;

  SearchApi() {
    _dio = Dio();
  }

  Future<List<Profiles>?> fetchProfiles(String query) async {
    try {
      Response response =
          await _dio!.get(url, queryParameters: {'query': query});
      Search profile = Search.fromJson(response.data);
      return profile.profiles;
    } on DioError catch (e) {
      print(e.message);
    }
    return null;
  }

  Future<List<Posts>?> fetchPosts(String query) async {
    try {
      Response response =
          await _dio!.get(url, queryParameters: {'query': query});
      Search posts = Search.fromJson(response.data);
      return posts.posts;
    } on DioError catch (e) {
      print(e.message);
    }
    return null;
  }

  Future<List<SearchComments>?> fetchComments(String query) async {
    try {
      Response response =
          await _dio!.get(url, queryParameters: {'query': query});
      Search comments = Search.fromJson(response.data);
      return comments.searchComments;
    } on DioError catch (e) {
      print(e.message);
    }
    return null;
  }
}
