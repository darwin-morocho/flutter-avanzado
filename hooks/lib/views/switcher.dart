import 'package:flutter/material.dart';

class SwitcherView extends StatefulWidget {
  const SwitcherView({super.key});

  @override
  State<SwitcherView> createState() => _SwitcherViewState();
}

class _SwitcherViewState extends State<SwitcherView> {
  String _type = 'student';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          DropdownButton(
            items: ['student', 'instructor']
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  ),
                )
                .toList(),
            onChanged: (value) {
              if (value != null) {
                setState(() {
                  _type = value;
                });
              }
            },
          ),
        ],
      ),
      body: PerformAction(
        type: _type,
      ),
    );
  }
}

class PerformAction extends StatefulWidget {
  const PerformAction({super.key, required this.type});
  final String type;

  @override
  State<PerformAction> createState() => _PerformActionState();
}

class _PerformActionState extends State<PerformAction> {
  bool _enabled = false;

  @override
  void didUpdateWidget(covariant PerformAction oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.type != widget.type) {
      print('🔥 ${oldWidget.type}');
      setState(() {
        _enabled = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: _enabled,
      title: const Text('Enabled'),
      onChanged: (value) => setState(() {
        _enabled = value;
      }),
    );
  }
}
