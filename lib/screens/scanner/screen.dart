library screens.scanner;

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScannerScreen extends StatelessWidget {
  const ScannerScreen({super.key});

  static page(BuildContext context) {
    return const NoTransitionPage(child: ScannerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
