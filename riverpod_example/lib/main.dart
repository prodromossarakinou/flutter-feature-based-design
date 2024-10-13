import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/core/riverpod_example_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const ProviderScope(
      child: RiverpodExampleApp(),
    ),
  );
}
