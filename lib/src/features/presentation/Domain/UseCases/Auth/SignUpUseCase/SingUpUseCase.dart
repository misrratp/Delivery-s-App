
import 'package:deliver_app_yt/src/Base/ApiService/AppError.dart';
import 'package:deliver_app_yt/src/Base/ApiService/Constans/ErrorMessage.dart';
import 'package:deliver_app_yt/src/features/Data/Repositories/Auth/SingUpRepository/SingUpRepository.dart';
import 'package:deliver_app_yt/src/features/Data/Repositories/Auth/SingUpRepository/SingUpRepositoryParameters.dart';
import 'package:deliver_app_yt/src/features/presentation/Domain/UseCases/Interfaces/Interfaces.dart';
import 'package:deliver_app_yt/src/utils/Helpers/ResultType/ResultType.dart';

import '../../Entities/Auth/SignUpEntity/SignUpEntity.dart';
import 'SignUpUseCaseParameters.dart';

abstract class SingUpUseCase{
  Future <Result<DefaultSignUpEntity, Failure>>execute({required SingUpUseCaseParameters params});
}

class DefaultSingUpUseCase extends SingUpUseCase {

  SingUpRepository _singUpRepository;

  DefaultSingUpUseCase({SingUpRepository? singUpRepository})
            : _singUpRepository = singUpRepository ?? DefaultSingUpRepository();

  

  @override
  Future<Result<DefaultSignUpEntity, Failure>> execute({required SingUpUseCaseParameters params}) {
   return _singUpRepository.singUp(params: SingUpRepositoryParameters(email: params.email, password: params.password)).then((result) {
    switch (result.status){
      case ResultStatus.success:
        // Null Check
        if(result.value == null){
          return Result.failure( Failure.fromMessage(message: AppFailureMessages.unExpectedErrorMessage));
        }
        DefaultSignUpEntity entity = DefaultSignUpEntity.fromMap(result.value!.toMap());
      
      // Guardamos el nuevo usuario en la Base de Datos
      return Result.success(entity);  
      case ResultStatus.error:
        return Result.failure(result.error);
    }
    });
  }

}