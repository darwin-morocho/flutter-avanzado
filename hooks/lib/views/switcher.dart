import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

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
            value: _type,
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

class PerformAction extends HookWidget {
  const PerformAction({super.key, required this.type});
  final String type;

  @override
  Widget build(BuildContext context) {
    final enabled = useState(false);

    useValueChanged(
      enabled.value,
      (_, __) {
        print('🐶');
        return '';
      },
    );

    useValueChanged(
      type,
      (oldValue, _) {
        print('✅');
        enabled.value = false;
        return '';
      },
    );

    return SwitchListTile(
      value: enabled.value,
      title: const Text('Enabled'),
      onChanged: (value) {
        enabled.value = value;
      },
    );
  }
}
