import 'package:deliver_app_yt/src/Services/FirebaseServices/AuthFirebaseServices/SignInAuthServices.dart';
import 'package:deliver_app_yt/src/utils/Helpers/ResultType/ResultType.dart';

import 'package:deliver_app_yt/src/features/Data/Repositories/Auth/SignUpRepository/SigInRepository/SigInBodyRepositoryParameters.dart';

import 'package:deliver_app_yt/src/Services/FirebaseServices/AuthFirebaseServices/Decodables/SignInDecodable.dart';

import 'package:deliver_app_yt/src/Base/ApiService/AppError.dart';

import '../../../../../../Services/FirebaseServices/AuthFirebaseServices/AuthFirebaseInterfaces.dart';
import '../../../../../presentation/Domain/Interfaces/Interfaces.dart';

class DefaultSigInRepository extends SignIpRepository {
  final SignInService _signInService;

  DefaultSigInRepository({SignInService? signInService})
      : _signInService = signInService ?? DefaultSignInService();
  @override
  Future<Result<SignInDecodable, Failure>> signIn(
      {required SigInBodyRepositoryParameters params}) async {
    try {
      final result =
          await _signInService.signIn(bodyParameters: params.toMap());
      SignInDecodable decodable = SignInDecodable.fromMap(result);
      return Result.success(decodable);
    } on Failure catch (f) {
      return Result.failure(
          Failure.getFirebaseAuthErrorMessage(error: f.error));
    }
  }
}
