import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_full_learn/202/service/post_model.dart';

class PostService {
  final Dio _networkmanager;
  PostService() : _networkmanager = Dio(BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com/"));

  Future<bool> addItemToService(PostModel postModel) async {
    final response = await _networkmanager.post(_PostServicePath.posts.name, data: postModel);

    return response.statusCode == HttpStatus.created;
  }

  Future<List<PostModel>?> fetchPostItemsAdvance() async {
    final response = await _networkmanager.get(_PostServicePath.posts.name);

    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;

      if (_datas is List) {
        return _datas.map((e) => PostModel.fromJson(e)).toList();
      }
    } else {
      return null;
    }
  }
}

enum _PostServicePath { posts, comments }
