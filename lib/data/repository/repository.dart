import 'package:payment/data/models/auth_token_model.dart';
import 'package:payment/data/models/order_id_model.dart';

import '../models/mobile_wallet_model.dart';
import '../models/payment_token_model.dart';
import '../models/reference_code_model.dart';
import '../web_services/dio_helper.dart';

class RepositoryPayment {
  DioHelper dioHelper;
  RepositoryPayment({required this.dioHelper});

  Future<AuthTokenModel> getFirstToken(
      {required String path,
      Map<String, dynamic>? query,
      Map<String, dynamic>? body}) async {
    try {
      var data = await dioHelper.post(path: path, query: query, body: body);
      return AuthTokenModel.fromJson(data);
    } catch (error) {
      throw Exception(error);
    }
  }

  Future<OrderIdModel> getOrderRegistrationAPI(
      {required String path,
      Map<String, dynamic>? query,
      Map<String, dynamic>? body}) async {
    try {
      var data = await dioHelper.post(path: path, query: query, body: body);
      return OrderIdModel.fromJson(data);
    } catch (error) {
      throw Exception(error);
    }
  }

  Future<PaymentTokenModel> getPaymentKeyRequest(
      {required String path,
      Map<String, dynamic>? query,
      Map<String, dynamic>? body}) async {
    try {
      var data = await dioHelper.post(path: path, query: query, body: body);
      return PaymentTokenModel.fromJson(data);
    } catch (error) {
      throw Exception(error);
    }
  }

  Future<ReferenceCodeModel> getReferenceCodeKiosk(
      {required String path,
      Map<String, dynamic>? query,
      Map<String, dynamic>? body}) async {
    try {
      var data = await dioHelper.post(path: path, query: query, body: body);
      return ReferenceCodeModel.fromJson(data);
    } catch (error) {
      throw Exception(error);
    }
  }

  Future<PayRequestMobilWallet> getPayRequestMobileWallet(
      {required String path,
      Map<String, dynamic>? query,
      Map<String, dynamic>? body}) async {
    try {
      var data = await dioHelper.post(path: path, query: query, body: body);
      return PayRequestMobilWallet.fromJson(data);
    } catch (error) {
      throw Exception(error);
    }
  }
}
