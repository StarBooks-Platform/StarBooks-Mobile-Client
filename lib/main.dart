import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:star_books_mobile_client/dependency_injection.dart';
import 'package:star_books_mobile_client/presentation/core/app_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies(Environment.dev);

  runApp(AppWidget());
}
