
import 'package:flutter/material.dart';

import '../../blocs/bloc_imports.dart';
import '../../blocs/counter_bloc/counter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc App'),
        centerTitle: true,
      ),
      body: bodyDiv(context),
    );
  }
}

bodyDiv(context) {
  return Container(
    padding: const EdgeInsets.all(20.0),
    child: BlocBuilder<CounterBloc,CounterState>(
      builder: (context, state) {
        
        if (state is CounterInitial){
          return Column(children: [
            const Text('Count: 0'),
            buildButtons(context),
          ],);
          
        }else if(state is CounterValueChangedState){
          return Column(
            children: [
              Text(
                state.counter.toString(),
                style: const TextStyle(color:Colors.green),
              ),
              buildButtons(context),
            ],
          );
        }
        return buildButtons(context);
      },
    ),
  );
}

buildButtons(context){
  return Row(children: [
            ElevatedButton(
            onPressed: () {
             BlocProvider.of<CounterBloc>(context).add(DecreasementEvent());
             ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("Decrease"),
                duration: Duration(milliseconds: 1300),
              ));
            },
            child: const Text('Decrease'),
          ),
          const SizedBox(width: 20.0,),
          ElevatedButton(
            onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(IncreasementEvent());  
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("Increase"),
                duration: Duration(milliseconds: 1300),
              ));
            },
            child: const Text('Increase'),
            
          )
          ],);
}