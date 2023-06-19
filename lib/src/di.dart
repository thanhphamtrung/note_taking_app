import 'package:get_it/get_it.dart';

import 'features/user_authentications/presentation/blocs/authentication/authentication_bloc.dart';

final sl = GetIt.instance;
final IAuthenticationRepository authenticationRepository =
    AuthenticationRepository();


Future<void> init() async {
  sl.registerLazySingleton(() => AuthenticationBloc(
        authenticationRepository: authenticationRepository,
        userRepository: userRepository,
      ));
}
