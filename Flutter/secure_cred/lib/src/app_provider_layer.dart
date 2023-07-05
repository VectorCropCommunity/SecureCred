import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'domain/core/di/injectable.dart';

class AppProvidersLayer extends StatelessWidget {
  final Widget child;

  const AppProvidersLayer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        
      ],
      child: child,
    );
  }
}