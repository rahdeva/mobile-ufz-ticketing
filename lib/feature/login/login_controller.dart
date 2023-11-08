import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:permission_handler/permission_handler.dart';
import '/data/local/storage/storage_constants.dart';
import '/data/remote/api_services.dart';
import '/data/remote/base/base_controller.dart';
import '/feature/auth/auth_controller.dart';
import '/model/user.dart';
import '/data/remote/errorhandler/error_handler.dart';

class LoginController extends BaseController<User> {
  final AuthController authController = AuthController.find;
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

  @override
  void loadNextPage() {}

  @override
  void refreshPage() {}

  @override
  get statusData => dataObj;

  @override
  String get storageName => StorageName.USERS;

  @override
  Future<void> onReady() async {
    var permissionStorage = await Permission.storage.status;
    if (permissionStorage.isDenied) {
      await Permission.storage.request();
    }
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void signInWithEmailAndPassword() async {
    loadingState();
    await client().then((value) => value
            .login(formKey.currentState?.value['email'],
                formKey.currentState?.value['password'])
            .validateResponse()
            .then((value) async {
          await saveCacheAndFinish(data: value.data!.user);
          await authController.saveAuthData(
            user: value.data!.user!,
            token: value.data!.token!,
          );
        }).handleError((onError) {
          finishLoadData(errorMessage: onError);
        }));
  }

  void bypassLogin() async {
    loadingState();
    await Future.delayed(Duration(seconds: 2));
    var user = User(
        id: 1,
        name: "suitmedian",
        email: "@suitmedia.com",
        gender: "none",
        status: "admin");
    authController.saveAuthData(user: user, token: "a");
    finishLoadData();
    authController.setAuth();
  }
}
