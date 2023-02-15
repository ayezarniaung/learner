import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learner/features/counter/presentation/cubit/counter_cubit.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    var yt = YoutubeExplode();
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Column(
        children: [
          Center(
            child: BlocBuilder<CounterCubit, int>(
              builder: (context, state) {
                return Text('$state', style: textTheme.displayMedium);
              },
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              var video = await yt.videos.get('https://youtu.be/Nt3axGId4b8');
              print(video);
              yt.close();
            },
            child: const Text('Download'),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            key: const Key('counterView_increment_floatingActionButton'),
            child: const Icon(Icons.add),
            onPressed: () => context.read<CounterCubit>().increment(),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            key: const Key('counterView_decrement_floatingActionButton'),
            child: const Icon(Icons.remove),
            onPressed: () => context.read<CounterCubit>().decrement(),
          ),
        ],
      ),
    );
  }
}
