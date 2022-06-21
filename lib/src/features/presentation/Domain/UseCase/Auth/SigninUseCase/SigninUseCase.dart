import 'package:deliver_app_yt/src/Base/ApiService/AppError.dart';
import 'package:deliver_app_yt/src/features/Data/Repositories/Auth/SignUpRepository/SigInRepository/SigInRepository.dart';
import 'package:deliver_app_yt/src/features/presentation/Domain/Entities/Auth/SigInEntity/SigInEntity.dart';
import 'package:deliver_app_yt/src/utils/Helpers/ResultType/ResultType.dart';

import '../../../../../../Services/FirebaseServices/AuthFirebaseServices/Decodables/SignUpDecodable.dart';
import '../../../Entities/Auth/SigInEntity/SigInEntity.dart';
import '../../../Entities/Auth/SigInEntity/SigInEntity.dart';
import '../../../Entities/Auth/SigInEntity/SigInEntity.dart';
import '../../../Interfaces/Interfaces.dart';
import 'SigInUseCaseBodyParameters.dart';

abstract class SigInUseCase {
  Future<Result<SignInEntity, Failure>> execute(
      {required SigInUseCaseBodyParameters params});
}

class DefaultSigInUseCase extends SigInUseCase {
  @override
  Future<Result<SignInEntity, Failure>> execute(
      {required SigInUseCaseBodyParameters params}) {
    // TODO: implement execute
    throw UnimplementedError();
  }
}
