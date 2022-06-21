// Auth Repositories
import 'package:deliver_app_yt/src/Base/ApiService/AppError.dart';
import 'package:deliver_app_yt/src/Services/FirebaseServices/AuthFirebaseServices/Decodables/SignUpDecodable.dart';
import 'package:deliver_app_yt/src/features/Data/Repositories/Auth/SignUpRepository/SignUpRepositoryParameters.dart';
import 'package:deliver_app_yt/src/features/Data/Repositories/Auth/SignUpRepository/User/UserBodyParameters.dart';
import 'package:deliver_app_yt/src/utils/Helpers/ResultType/ResultType.dart';

abstract class SignIpRepository {
  signIn();
}

abstract class SignUpRepository {
  Future<Result<SignUpDecodable, Failure>> singUp(
      {required SignUpRepositoryParameters params});
}

// User Database Repositories
abstract class SaveUserDataRepository {
  Future<Result<SignUpDecodable, Failure>> saveUserData(
      {required UserBodyParameters parameters});
}
