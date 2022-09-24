import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment/app/injection.dart' as di;
import 'package:payment/presentation/cubit/payment_cubit.dart';
import 'package:payment/presentation/screens/payment_method_screen.dart';

import '../config/theme_app.dart';

class MyApp extends StatefulWidget {
  const MyApp._internal();

  static const _instance = MyApp._internal();

  factory MyApp() => _instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.instance<PaymentCubit>(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: appTheme(),
        home: const PaymentMethodScreen(),
      ),
    );
  }
}
