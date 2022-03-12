import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:uber_project/dependency_injection.dart';
import 'package:uber_project/presentation/cubit/app_observer.dart';
import 'package:uber_project/presentation/views/app.dart';

void main() {
  setup();
  BlocOverrides.runZoned(() => runApp(App()), blocObserver: AppObserver());
}
