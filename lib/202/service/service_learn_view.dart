import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/service/post_model.dart';
import 'package:flutter_full_learn/202/service/post_service.dart';

class ServiceLearn extends StatefulWidget {
  const ServiceLearn({Key? key}) : super(key: key);

  @override
  State<ServiceLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServiceLearn> {
  List<PostModel>? _items;
  String? name;
  bool isLoading = false;
  late final Dio _networkmanager;
  final _baseUrl = "https://jsonplaceholder.typicode.com/";

  late final PostService _postService;

  @override
  void initState() {
    super.initState();
    _postService = PostService();
    _networkmanager = Dio(BaseOptions(baseUrl: _baseUrl));
    name = "Veli";
    fetchPostItemsAdvance();
  }

  void _changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }

  // Future<void> fetchPostItems() async {
  //   final response = await Dio().get("https://jsonplaceholder.typicode.com/posts");

  //   _changeLoading();

  //   if (response.statusCode == HttpStatus.ok) {
  //     final _datas = response.data;

  //     if (_datas is List) {
  //       setState(() {
  //         _items = _datas.map((e) => PostModel.fromJson(e)).toList();
  //       });
  //     }
  //   }
  //   _changeLoading();
  // }

  Future<void> fetchPostItemsAdvance() async {
    _items = await _postService.fetchPostItemsAdvance();

    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name ?? ""),
        actions: [
          isLoading ? const CircularProgressIndicator.adaptive() : const SizedBox.shrink(),
        ],
      ),
      body: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 10),
          itemCount: _items?.length ?? 0,
          itemBuilder: ((context, index) {
            return _PostCard(model: _items?[index]);
          })),
    );
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({
    Key? key,
    required PostModel? model,
  })  : _model = model,
        super(key: key);

  final PostModel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        title: Text(_model?.title ?? ""),
        subtitle: Text(_model?.body ?? ""),
      ),
    );
  }
}
