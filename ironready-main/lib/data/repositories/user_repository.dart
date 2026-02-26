import '../models/user_model.dart';
import '../sources/remote/user_api_service.dart';



class UserRepository {
  final UserApiService remoteSource;

  UserRepository({required this.remoteSource});

  Future<List<UserModel>> getUsers() async {
    return await remoteSource.fetchUsers();
  }
}


