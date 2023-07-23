import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:securecar_app/interactor/internet/internet_state.dart';

class InternetCubit extends Cubit<InternetState> {
  InternetCubit() : super(InternetConnectionState(isConnection: false));

  Future<void> checkInternetStatus() async {
    while (true) {
      final result = await InternetAddress.lookup('google.com');
      await Future<void>.delayed(const Duration(seconds: 5));
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        emit(InternetConnectionState(isConnection: true));
        return;
      }
    }
  }
}
