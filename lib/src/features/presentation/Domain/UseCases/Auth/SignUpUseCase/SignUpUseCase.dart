
import 'package:deliver_app_yt/src/Base/ApiService/AppError.dart';
import 'package:deliver_app_yt/src/Base/ApiService/Constans/ErrorMessage.dart';
import 'package:deliver_app_yt/src/features/Data/Repositories/Auth/SingUpRepository/SignUpRepository.dart';
import 'package:deliver_app_yt/src/features/Data/Repositories/Auth/SingUpRepository/SignUpRepositoryParameters.dart';
import 'package:deliver_app_yt/src/features/presentation/Domain/UseCases/Entities/Auth/SignUpEntity/SignUpEntity.dart';
import 'package:deliver_app_yt/src/features/presentation/Domain/UseCases/Interfaces/Interfaces.dart';
import 'package:deliver_app_yt/src/utils/Helpers/ResultType/ResultType.dart';
import 'package:flutter/cupertino.dart';
import 'SignUpUseCaseParameters.dart';

abstract class SignUpUseCase{
  Future <Result<SignUpEntity, Failure>>execute({required SignUpUseCaseParameters params});
}

class DefaultSignUpUseCase extends SignUpUseCase {

  SignUpRepository _signUpRepository;

  DefaultSignUpUseCase({SignUpRepository? signUpRepository})
            : _signUpRepository = signUpRepository ?? DefaultSignUpRepository();

  @override
  Future<Result<SignUpEntity, Failure>> execute({required SignUpUseCaseParameters params}) {
   return _signUpRepository.singUp(params: SignUpRepositoryParameters(email: params.email, password: params.password)).then((result) {
    switch (result.status){
      case ResultStatus.success:
        // Null Check
        if(result.value == null){
          return Result.failure( Failure.fromMessage(message: AppFailureMessages.unExpectedErrorMessage));
        }
        SignUpEntity entity = SignUpEntity.fromMap(result.value!.toMap());
      // Guardamos el nuevo usuario en la Base de Datos
        return Result.success(entity);  
      case ResultStatus.error:
        return Result.failure(result.error);
    }
    });
  }

}