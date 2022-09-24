import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:payment/app/injection.dart' as di;
import 'package:payment/presentation/cubit/bloc_observer.dart';

import 'app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}
