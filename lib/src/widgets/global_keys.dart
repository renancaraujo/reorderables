import 'package:flutter/widgets.dart';

class SubStateGlobalKey<T extends State<StatefulWidget>>
    extends GlobalObjectKey<T> {
  const SubStateGlobalKey(this.subKey, this.state) : super(subKey);

  final Key subKey;

  final T state;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      super == other &&
          other is SubStateGlobalKey &&
          runtimeType == other.runtimeType &&
          subKey == other.subKey &&
          state == other.state;

  @override
  int get hashCode => super.hashCode ^ subKey.hashCode ^ state.hashCode;
}
