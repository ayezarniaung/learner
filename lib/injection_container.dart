import 'package:get_it/get_it.dart';
import 'package:learner/features/counter/presentation/cubit/counter_cubit.dart';

final sl = GetIt.instance;
Future<void> init() async {
  sl.registerLazySingleton<CounterCubit>(() => CounterCubit());
}
