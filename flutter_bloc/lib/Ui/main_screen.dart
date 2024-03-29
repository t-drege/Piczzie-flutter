import 'package:flutter/material.dart';
import 'package:flutter_bloc/BLoC/bloc_provider.dart';
import 'package:flutter_bloc/BLoC/location_bloc.dart';
import 'package:flutter_bloc/DataLayer/Location.dart';
import 'package:flutter_bloc/Ui/LocationScreen.dart';
import 'package:flutter_bloc/Ui/RestaurantScreen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Location>(
      // 1
      stream: BlocProvider.of<LocationBloc>(context).locationStream,
      builder: (context, snapshot) {
        final location = snapshot.data;

        // 2
        if (location == null) {
          return LocationScreen();
        }

        // This will be changed this later
        return RestaurantScreen(location: location);
      },
    );
  }
}