import 'package:flutter/material.dart';
import 'bloc.dart';

class Provider extends InheritedWidget {
  final bloc = Bloc();
  Provider({Key key, Widget child}) : super(key: key, child: child);
  static Bloc of(BuildContext context) {
    var inheritProviderType = context.inheritFromWidgetOfExactType(Provider);
    return (inheritProviderType as Provider).bloc;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
