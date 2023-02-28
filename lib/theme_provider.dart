import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

@riverpod
class ThemeState extends _$ThemeState {
  @override
  ThemeMode build() {
    return ThemeMode.dark;
  }

  void toggle() {
    if (state == ThemeMode.dark) {
      state = ThemeMode.light;
      return;
    }
    if (state == ThemeMode.light) state = ThemeMode.dark;
  }
}

@riverpod
bool test(TestRef ref) {
  return false;
}
