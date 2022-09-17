import 'package:flutter/material.dart';

double kZero = 0;

class AnimatedLearnView extends StatefulWidget {
  const AnimatedLearnView({Key? key}) : super(key: key);

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView> with TickerProviderStateMixin {
  bool _isVisible = false;
  bool _isOpacity = false;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: _DurationItems.DurationLow);
  }

  void _changeVisibile() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void _changeOpacity() {
    setState(() {
      _isOpacity = !_isOpacity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _placeHolderWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _changeVisibile;
          controller.animateTo(_isVisible ? 1 : 0);
        },
      ),
      body: Column(
        children: [
          ListTile(
            title: AnimatedOpacity(
              child: const Text("data"),
              duration: _DurationItems.DurationLow,
              opacity: _isOpacity ? 1 : 0,
            ),
            trailing: IconButton(
              onPressed: () {
                _changeOpacity();
              },
              icon: const Icon(Icons.precision_manufacturing_rounded),
            ),
          ),
          AnimatedDefaultTextStyle(
            child: const Text("data"),
            style: (_isVisible ? context.textTheme().headline1 : context.textTheme().subtitle1) ?? const TextStyle(),
            duration: _DurationItems.DurationLow,
          ),
          AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: controller,
          ),
          AnimatedContainer(
            duration: _DurationItems.DurationLow,
            height: (MediaQuery.of(context).size.width) * 0.2,
            width: (MediaQuery.of(context).size.height) * 0.2,
            color: Colors.blue,
            margin: const EdgeInsets.all(10),
          ),
          Expanded(
            child: Stack(
              children: const [
                AnimatedPositioned(
                  top: 30,
                  curve: Curves.elasticOut,
                  child: Text("data"),
                  duration: _DurationItems.DurationLow,
                ),
              ],
            ),
          ),
          Expanded(
            child: AnimatedList(itemBuilder: (context, index, animated) {
              return const Text("data");
            }),
          )
        ],
      ),
    );
  }

  AnimatedCrossFade _placeHolderWidget() {
    return AnimatedCrossFade(
      firstChild: const Placeholder(),
      secondChild: const SizedBox.shrink(),
      duration: _DurationItems.DurationLow,
      crossFadeState: _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    );
  }
}

extension BuildContextExtension on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}

class _DurationItems {
  static const DurationLow = Duration(seconds: 1);
}

//Text("data", style: context.textTheme().headline1)
