import 'dart:io';
import 'package:flutter_full_learn/202/custom_exception.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class IFileDownload {
  bool? downloadItem(FileItem? fileItem);

  void toShare(String path) async {
    await launchUrl(Uri.parse(path));
  }
}

class FileDownload extends IFileDownload {
  @override
  bool? downloadItem(FileItem? fileItem) {
    if (fileItem == null) throw FileDownloadException();

    print("a");

    return true;
  }

  @override
  void toShare(String path) async {
    await launchUrl(
      Uri.parse(path),
    );
  }

  void smsShare() {}
}

class FileItem {
  final String name;
  final File file;

  FileItem(this.name, this.file);
}

// abstract class gibidir ama başına on koayarak spesifik seneryaolarda kullanıyoruz
mixin ShareMixin {
  void share();
}
