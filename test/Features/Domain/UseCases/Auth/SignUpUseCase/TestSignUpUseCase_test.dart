
import 'package:deliver_app_yt/src/Base/ApiService/AppError.dart';
import 'package:deliver_app_yt/src/Base/ApiService/Constans/ErrorMessage.dart';
import 'package:deliver_app_yt/src/Services/FirebaseServices/AuthFirebaseServices/Decodables/AuthErrorDecodable.dart';
import 'package:deliver_app_yt/src/features/presentation/Domain/Entities/Auth/SignUpEntity/SignUpEntity.dart';
import 'package:deliver_app_yt/src/features/presentation/Domain/UseCase/Auth/SingUpUseCase/SingUpUseCase.dart';
import 'package:deliver_app_yt/src/features/presentation/Domain/UseCase/Auth/SingUpUseCase/SingUpUseCaseParameters.dart';
import 'package:deliver_app_yt/src/utils/Helpers/ResultType/ResultType.dart';
import 'package:flutter_test/flutter_test.dart';

abstract class _Constants {
  static String correoEmail = "cane3@gmail.com";
  static String correctPass = "123456";
  static String wrongEmail = "cane2@gmail.com";
  static String wrongPass = "123456";
}

void main(){

  //GIVEN
  SignUpUseCase sut = DefaultSignUpUseCase();

  group('Test success SignUp user in Firebase', (){
  test('Test success signUp user in Firebase', () async{
   final SingUpUseCaseParameters params = SingUpUseCaseParameters(
     email: _Constants.correoEmail,
     password: _Constants.correctPass,
     username: 'Cane 3',
     date: '22/10/1989',
     phone: '123456'
   );

    //WHEN

    final result = await sut.execute(params: params);

    switch(result.status){
      
      case ResultStatus.success:
        //THEN
        expect(result.value, isA<SignUpEntity>());
        break;
      case ResultStatus.error:
        //THEN
        expect(result.error, Failure);
        break;
        
           }
     });

  });
 
  group('Test failure SignUp in Firebase', () {
   test('Test failure SignUp in Firebase', () async {
      try{
        //WHEN
        final SingUpUseCaseParameters params = SingUpUseCaseParameters(
        email: _Constants.wrongEmail,
        password: _Constants.wrongPass,
        username: 'Cane 2',
        date: '22/10/1989',
        phone: '123456'
       );
       final result = await sut.execute(params: params);
     } on Failure catch(f){
        //THEN
        AuthErrorDecodable _error = f as AuthErrorDecodable;
        expect(_error.error!.message, FBFailureMessages.emailExistMessage);
      }
     });
  });

}

