import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/image_learn_202.dart';
import 'package:flutter_full_learn/303/reqres_resource/service/reqres_service.dart';
import 'package:flutter_full_learn/303/reqres_resource/viewModel/reqres_view_model.dart';
import 'package:flutter_full_learn/303/reqres_resource/viewModel/reqres_view_provider.dart';
import 'package:flutter_full_learn/product/extension/string_extension.dart';
import 'package:flutter_full_learn/product/global/resource_contex.dart';
import 'package:flutter_full_learn/product/global/theme_notifier.dart';
import 'package:flutter_full_learn/product/service/project_dio.dart';
import 'package:provider/provider.dart';

import '../model/resource_model.dart';

class ReqresView extends StatefulWidget {
  const ReqresView({Key? key}) : super(key: key);

  @override
  State<ReqresView> createState() => _ReqresViewState();
}

//class _ReqresViewState extends ReqresViewModel {
class _ReqresViewState extends State<ReqresView> with ProjectDioMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ReqresProvider>(
      create: (context) => ReqresProvider(ReqresService(service)),
      builder: (context, child) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.read<ThemeNotifier>().changeTheme();
            },
          ),
          appBar: AppBar(
            actions: [_SaveAndNavigateWidget()],
            title: context.watch<ReqresProvider>().isLoading ? const CircularProgressIndicator(color: Colors.white) : null,
          ),
          body: Column(
            children: [
              _TempPlaceHolder(),
              Expanded(child: _resurceListView(context, context.watch<ReqresProvider>().resources)),
            ],
          ),
        );
      },
    );
  }

  ListView _resurceListView(BuildContext context, List<Data> items) {
    return ListView.builder(
      itemCount: context.watch<ReqresProvider>().resources.length,
      itemBuilder: (context, index) {
        return Card(
          color: Color(items[index].color?.colorValue ?? 0),
          child: Text(items[index].name ?? ""),
        );
      },
    );
  }
}

class _SaveAndNavigateWidget extends StatelessWidget {
  const _SaveAndNavigateWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          context.read<ReqresProvider>().saveToLocal(context.read<ResourceContext>());
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return ImageLearn202();
              },
            ),
          );
        },
        icon: Icon(Icons.ac_unit));
  }
}

class _TempPlaceHolder extends StatelessWidget {
  const _TempPlaceHolder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Selector<ReqresProvider, bool>(
      builder: (context, value, child) {
        return value ? const Placeholder() : const Text("data");
      },
      selector: (context, provider) {
        return provider.isLoading;
      },
    );
  }
}
