import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:securecar_app/interactor/internet/internet_cubit.dart';
import 'package:securecar_app/interactor/internet/internet_state.dart';
import 'package:securecar_app/ui/pages/home/home_page.dart';
import 'package:securecar_app/ui/pages/welcome/welcome_page.dart';

class InternetPage extends StatelessWidget {
  const InternetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => InternetCubit(),
      child: BlocBuilder<InternetCubit, InternetState>(
        builder: (context, state) {
          final internetCubit = context.read<InternetCubit>();

          switch (state) {
            case InternetConnectionState():
              if (state.isConnection) {
                return const WelcomePage();
              } else {
                internetCubit.checkInternetStatus();

                return Text('sem net');
              }

            default:
              return const SizedBox();
          }
        },
      ),
    );
  }
}
