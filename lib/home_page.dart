import 'package:basketball/cubit/counter_cubit.dart';
import 'package:basketball/cubit/counter_state.dart';
import 'package:basketball/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
        if (state is CounterAIncrementState) {
        } else {}
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Points Counter'),
            backgroundColor: Colors.orange,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text('Team A', style: TextStyle(fontSize: 32)),
                      Text(
                          '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                          style: const TextStyle(fontSize: 150)),
                      const SizedBox(height: 40),
                      Custom_Button(team: 'A', buttonNumber: 1),
                      const SizedBox(height: 20),
                      Custom_Button(team: 'A', buttonNumber: 2),
                      const SizedBox(height: 20),
                      Custom_Button(team: 'A', buttonNumber: 3),
                    ],
                  ),
                  const SizedBox(
                    height: 450,
                    child: VerticalDivider(
                      width: 50,
                      thickness: 2,
                      color: Color.fromARGB(60, 0, 0, 0),
                    ),
                  ),
                  Column(
                    children: [
                      const Text('Team B', style: TextStyle(fontSize: 32)),
                      Text(
                          '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                          style: const TextStyle(fontSize: 150)),
                      const SizedBox(height: 40),
                      Custom_Button(team: 'B', buttonNumber: 1),
                      const SizedBox(height: 20),
                      Custom_Button(team: 'B', buttonNumber: 2),
                      const SizedBox(height: 20),
                      Custom_Button(team: 'B', buttonNumber: 3),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 100),
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).reset();
                },
                child: const Text('Reset',
                    style: TextStyle(color: Colors.black, fontSize: 18)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    fixedSize: const Size(200, 50)),
              ),
            ],
          ),
        );
      },
    );
  }
}
