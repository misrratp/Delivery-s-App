
import 'package:deliver_app_yt/src/Base/ApiService/AppError.dart';

enum ResultStatus{ success, error}

class Result<T,E> {
final E? error;
final T? value;
final ResultStatus status;

Result.success(this.value)
 : status = ResultStatus.success,
   error = null;

Result.failure(this.error)
 : status = ResultStatus.error,
   value = null;

Result(this.status, this.value, this.error);
}