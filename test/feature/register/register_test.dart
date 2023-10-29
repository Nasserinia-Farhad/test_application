import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:test_appliation/feature/register/data/model/request_model.dart/register_requester.dart';
import 'package:test_appliation/feature/register/presentation/controller/register_controller.dart';

void main() {
  setUp(() {
    Get.put(RegisterController());
  });
  const String email = 'Nasserinia.Farhad@gmail.com';
  const String password = "102030";
  const String confirmPassword = "102030";

  test(
    "should send true after send email",
    () {
      // arrange
      RegisterController controller = Get.find();
      // act
      var result = controller.emailValidator(email: email);
      // assert
      expect(result, true);
    },
  );
  test(
    'should send true after send password and confirm password',
    () {
      // arrange
      RegisterController controller = Get.find();
      // act
      var result = controller.isMatchPasswordWithConfirmPassword(password: password, confirmPassword: confirmPassword);
      // assert
      expect(result, true);
    },
  );

  test(
    'should send true after send email and match password with confirm password',
    () {
      // arrange
      RegisterController controller = Get.find();
      // act
      RegisterRequester requester = RegisterRequester(
        email: email,
        password: password,
        confirmPassword: confirmPassword,
      );
      var result = controller.onPressedRegisterButton(requester: requester);
      // assert
      expect(result, true);
    },
  );
}
