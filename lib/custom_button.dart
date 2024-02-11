
import 'package:basketball/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Custom_Button extends StatelessWidget {
  const Custom_Button({
    super.key, required this.buttonNumber, required this.team,
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
      child: Text('Add $buttonNumber Point',
          style: TextStyle(color: Colors.black, fontSize: 18)),
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange, fixedSize: const Size(150, 50)),
    );
  }
}
