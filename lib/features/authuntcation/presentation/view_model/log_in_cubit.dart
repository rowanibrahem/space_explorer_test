import 'dart:convert';

import 'package:afro_app/constants.dart';
import 'package:afro_app/core/nertwork/cacheNetwork.dart';
import 'package:afro_app/features/authuntcation/presentation/view_model/log_in_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';



class LoginCubit extends Cubit<AuthStates> {
  LoginCubit() : super(IntialState());

  void LogIn({
    required String email,
    required String password,
  }) async {
    emit(LogInLoadingState());
    try {
      var url = Uri.parse('http://localhost:8080/api/v1/auth/login');

      var jsonData = {
        'email': email,
        'password': password,
      };

      final requestBody = jsonEncode(jsonData);

      final Response response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: requestBody,
      );

      // statusCode = response.statusCode;
      print(response.statusCode);

      print("Response Body: ${response.body}");
     final Map<String, dynamic>? data = jsonDecode(response.body) as Map<String, dynamic>?;
      if (response.statusCode == 200) {
        // ignore: avoid_dynamic_calls
        // await CacheNetwork.insertToCashe(
        //     key: "token", value: data["token"]);
        await CacheNetwork.insertToCashe(key: "password", value: password);
        token = await CacheNetwork.getCacheData(key: "token");
        emit(LogInSuccessState());
        debugPrint("LogIN Succcessfully, token is : $token");
      } else {
        emit(LogInFailedState(message: "Incorrect Username or Password "));
      }
    } catch (e) {
      emit(LogInFailedState(message: "Something went wrong, Try again later"));
    }
  }
}