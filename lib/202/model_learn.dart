// ignore_for_file: public_member_api_docs, sort_constructors_first
class PostModel1 {
  int? userId;
  int? id;
  String? title;
  String? body;

  // hepsi null gelebilir durumunda tanımlama şekli
}

class PostModel2 {
  int userId;
  int id;
  String title;
  String body;

  PostModel2({required this.userId, required this.id, required this.title, required this.body});
  // uygulama oluştuğunda gelecek demek (constructor)
}

class PostModel3 {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel3(this.userId, this.id, this.title, this.body);
  // sadece kullanım zamanında gelir ve daha initilaze edilemez
}

class PostModel4 {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel4({required this.userId, required this.id, required this.title, required this.body});
  // kullanıcı girsin anlamına gelir. named yapmış olursun.
}

class PostModel5 {
  final int _userId;
  final int _id;
  final String _title;
  final String _body;

  int get userId => _userId;

  PostModel5({
    required int userId,
    required int id,
    required String title,
    required String body,
  })  : _userId = userId,
        _id = id,
        _title = title,
        _body = body;
}

class PostModel6 {
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;

  PostModel6({
    required int userId,
    required int id,
    required String title,
    required String body,
  }) {
    userId = _userId;
    id = _id;
    title = _title;
    body = _body;
  }
}

class PostModel7 {
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;

  PostModel7({
    int userId = 0,
    int id = 0,
    String title = "",
    String body = "",
  }) {
    userId = _userId;
    id = _id;
    title = _title;
    body = _body;
  }
}

class PostModel8 {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  PostModel8({this.userId, this.id, this.title, this.body});
}
