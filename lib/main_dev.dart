import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:piczzie/feature/main/main_bloc.dart';
import 'package:piczzie/service/service_locator.dart';
import 'configuration/app_config.dart';
import 'main.dart';

void main() {
  setupLocator();
  var configureApp = AppConfig(
    appTitle: "Piczzie_dev",
    buildFlavor: "Development",
    endpoint: "http://192.168.1.51:8080",
    child: App(),
  );

  return runApp(
    configureApp,
  );
}
