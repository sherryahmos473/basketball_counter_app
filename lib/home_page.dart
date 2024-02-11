
import 'package:basketball/cubit/counter_cubit.dart';
import 'package:basketball/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  int teamApoints = 0;
  int teamBpoints = 0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
        if (state is CounterAIncrementState) {
          teamApoints = BlocProvider.of<CounterCubit>(context).teamAPoints;
        }else {
          teamBpoints = BlocProvider.of<CounterCubit>(context).teamBPoints;
        }
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
                      Text('$teamApoints', style: const TextStyle(fontSize: 150)),
                      const SizedBox(height: 40),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Add 1 Point',
                            style:
                                TextStyle(color: Colors.black, fontSize: 18)),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            fixedSize: const Size(150, 50)),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Add 2 Point',
                            style:
                                TextStyle(color: Colors.black, fontSize: 18)),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            fixedSize: const Size(150, 50)),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Add 3 Point',
                            style:
                                TextStyle(color: Colors.black, fontSize: 18)),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            fixedSize: const Size(150, 50)),
                      ),
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
                      Text('$teamBpoints', style: const TextStyle(fontSize: 150)),
                      const SizedBox(height: 40),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Add 1 Point',
                            style:
                                TextStyle(color: Colors.black, fontSize: 18)),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            fixedSize: const Size(150, 50)),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Add 2 Point',
                            style:
                                TextStyle(color: Colors.black, fontSize: 18)),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            fixedSize: const Size(150, 50)),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Add 3 Point',
                            style:
                                TextStyle(color: Colors.black, fontSize: 18)),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            fixedSize: const Size(150, 50)),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 100),
              ElevatedButton(
                onPressed: () {},
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
