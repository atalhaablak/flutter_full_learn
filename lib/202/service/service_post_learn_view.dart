import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/service/post_model.dart';

class ServicePostLearn extends StatefulWidget {
  const ServicePostLearn({Key? key}) : super(key: key);

  @override
  State<ServicePostLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServicePostLearn> {
  String? name;
  bool isLoading = false;
  late final Dio _networkmanager;
  final _baseUrl = "https://jsonplaceholder.typicode.com/";

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  final TextEditingController _userIdController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _networkmanager = Dio(BaseOptions(baseUrl: _baseUrl));
    name = "Veli";
  }

  void _changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }

  Future<void> _addItemToService(PostModel postModel) async {
    _changeLoading();
    final response = await _networkmanager.post("posts", data: postModel);

    if (response.statusCode == HttpStatus.created) {
      setState(() {
        name = "Başarılı";
      });
    }
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
      body: Column(
        children: [
          TextField(
            controller: _titleController,
            decoration: InputDecoration(labelText: "Title"),
            textInputAction: TextInputAction.next,
          ),
          TextField(
            textInputAction: TextInputAction.next,
            controller: _bodyController,
            decoration: InputDecoration(labelText: "Body"),
          ),
          TextField(
              controller: _userIdController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "UserId")),
          TextButton(
            onPressed: isLoading
                ? null
                : () {
                    if (_titleController.text.isNotEmpty &&
                        _bodyController.text.isNotEmpty &&
                        _userIdController.text.isNotEmpty) {
                      final model = PostModel(
                          body: _bodyController.text, title: _titleController.text, userId: int.tryParse(_userIdController.text));
                      _addItemToService(model);
                    }
                  },
            child: const Text("send"),
          ),
        ],
      ),
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
