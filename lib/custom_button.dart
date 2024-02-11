import 'package:basketball/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonNumber,
    required this.team,
  });
  final int buttonNumber;
  final String team;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        BlocProvider.of<CounterCubit>(context)
            .incrementTeam(team: team, buttonNumber: buttonNumber);
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange, fixedSize: const Size(150, 50)),
      child: Text('Add $buttonNumber',
          style: const TextStyle(color: Colors.black, fontSize: 18)),
    );
  }
}
