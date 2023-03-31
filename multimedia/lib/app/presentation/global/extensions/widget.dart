import 'package:flutter/widgets.dart';

extension WidgetExtension on Widget {
  SliverToBoxAdapter get asSliverToBoxAdapter {
    return SliverToBoxAdapter(
      child: this,
    );
  }
}
