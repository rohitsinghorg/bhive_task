import 'dart:developer';

import 'package:bhive_task/data/models/user_list_model.dart';
import 'package:get/get.dart';

import 'package:bhive_task/core/core.dart';
import '../../data/interfaces/storage_interface.dart';
import '../../data/services/storage_service.dart';

class AuthController extends GetxController {
  final IStorageInterface _storage = Get.find<StorageService>();

  void saveUser(User user) {
    _storage.write(storedUserStorageKey, user);
    saveInDatabase(user);
  }

  void deleteStoredUser() {
    _storage.remove(storedUserStorageKey);
  }

  User? get storedUser => _storage.read<User?>(storedUserStorageKey,
      construct: (value) => value != Null ? User.fromJson(value) : User());

  void saveInDatabase(User user) {
    List<User>? userList1 = userList;
    log("Save in Db called");
    userList1?.forEach((element) {
      log("User List is: ${element.userId} - ${element.referredBy}");
    });

    userList1?.add(user);

    _storage.write(usersStorageKey, userList1 ?? <User>[]);
  }

  List<User>? get userList {
    log(_storage.readRaw(usersStorageKey) ?? '-');
    return userModelFromJson(_storage.readRaw<String>(usersStorageKey) ?? "[]");
  }
}
