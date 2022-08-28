import 'package:flutter/material.dart';

import '../../303/callback_learn.dart';

class CallbackDropDown extends StatefulWidget {
  CallbackDropDown({Key? key, required this.onUserSelected}) : super(key: key);

  final void Function(CallBackUser user) onUserSelected;

  @override
  State<CallbackDropDown> createState() => _CallbackDropDownState();
}

class _CallbackDropDownState extends State<CallbackDropDown> {
  CallBackUser? _user;

  void _updateUser(CallBackUser? item) {
    setState(() {
      _user = item;
    });
    if (_user != null) {
      widget.onUserSelected.call(_user!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<CallBackUser>(
        value: _user,
        items: CallBackUser.dummyUsers()
            .map((e) => DropdownMenuItem(
                  child: Text(
                    e.name,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  value: e,
                ))
            .toList(),
        onChanged: _updateUser);
  }
}
