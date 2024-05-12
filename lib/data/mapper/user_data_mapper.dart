import 'package:injectable/injectable.dart';

import '../../domain/entities/user/user_entity.dart';
import '../../shared/exceptions/mapper_exception.dart';
import '../models/api/user_api_model.dart';

@LazySingleton()
class UserDataMapper {
  /// Example code
  UserEntity toUser(UserApiModel model) {
    try {
      return UserEntity(
        id: model.id,
        email: model.email,
        firstName: model.firstName,
        lastName: model.lastName,
        avatar: model.avatar,
      );
    } on Exception catch (e) {
      throw MapperException<UserApiModel, UserEntity>(e);
    }
  }
}
