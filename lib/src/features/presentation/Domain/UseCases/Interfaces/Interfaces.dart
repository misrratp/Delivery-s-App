
// Auth Repositories
import 'package:deliver_app_yt/src/Base/ApiService/AppError.dart';
import 'package:deliver_app_yt/src/Services/FirebaseServices/AuthFirebaseServices/SignUpAuthServices.dart';

import 'package:deliver_app_yt/src/features/Data/Repositories/Auth/SingUpRepository/SignUpRepositoryParameters.dart';
import 'package:deliver_app_yt/src/utils/Helpers/ResultType/ResultType.dart';

import '../../../../../Services/FirebaseServices/AuthFirebaseServices/SignUpAuthServices.dart';

abstract class SignUpRepository {
 Future<Result<DefaultSignUpService, Failure>> singUp({ required SignUpRepositoryParameters params });
}