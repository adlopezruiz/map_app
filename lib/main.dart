import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_app/blocs/blocs.dart';
import 'package:map_app/screens/screens.dart';

void main() {
  runApp(
    MultiBlocProvider(providers: [
      BlocProvider(create: (context) => GpsBloc()),
      BlocProvider(create: (context) => LocationBloc()),
    ], child: const MapsApp()),
  );
}

class MapsApp extends StatelessWidget {
  const MapsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Maps APP',
      home: LoadingScreen(),
    );
  }
}
