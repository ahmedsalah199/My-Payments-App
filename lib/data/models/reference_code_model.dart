class ReferenceCodeModel {
  ReferenceCodeModel({
    required this.id,
    required this.pending,
    required this.amountCents,
    required this.success,
    required this.isAuth,
    required this.isCapture,
    required this.isStandalonePayment,
    required this.isVoided,
    required this.isRefunded,
    required this.is3DSecure,
    required this.integrationId,
    required this.profileId,
    required this.hasParentTransaction,
    required this.order,
    required this.createdAt,
    required this.transactionProcessedCallbackResponses,
    required this.currency,
    required this.sourceData,
    required this.apiSource,
    required this.terminalId,
    required this.merchantCommission,
    required this.installment,
    required this.isVoid,
    required this.isRefund,
    required this.data,
    required this.isHidden,
    required this.paymentKeyClaims,
    required this.errorOccured,
    required this.isLive,
    required this.otherEndpointReference,
    required this.refundedAmountCents,
    required this.sourceId,
    required this.isCaptured,
    required this.capturedAmount,
    required this.merchantStaffTag,
    required this.updatedAt,
    required this.owner,
    required this.parentTransaction,
  });

  final int? id;
  final bool pending;
  final int? amountCents;
  final bool success;
  final bool isAuth;
  final bool isCapture;
  final bool isStandalonePayment;
  final bool isVoided;
  final bool isRefunded;
  final bool is3DSecure;
  final int? integrationId;
  final int? profileId;
  final bool hasParentTransaction;
  final Order order;
  final DateTime createdAt;
  final List<dynamic> transactionProcessedCallbackResponses;
  final String? currency;
  final SourceData sourceData;
  final String? apiSource;
  final dynamic terminalId;
  final int? merchantCommission;
  final dynamic installment;
  final bool isVoid;
  final bool isRefund;
  final KioskPaymentData data;
  final bool isHidden;
  final PaymentKeyClaims paymentKeyClaims;
  final bool errorOccured;
  final bool isLive;
  final dynamic otherEndpointReference;
  final int? refundedAmountCents;
  final int? sourceId;
  final bool isCaptured;
  final int? capturedAmount;
  final dynamic merchantStaffTag;
  final DateTime updatedAt;
  final int? owner;
  final dynamic parentTransaction;

  factory ReferenceCodeModel.fromJson(Map<String, dynamic> json) =>
      ReferenceCodeModel(
        id: json["id"],
        pending: json["pending"],
        amountCents: json["amount_cents"],
        success: json["success"],
        isAuth: json["is_auth"],
        isCapture: json["is_capture"],
        isStandalonePayment: json["is_standalone_payment"],
        isVoided: json["is_voided"],
        isRefunded: json["is_refunded"],
        is3DSecure: json["is_3d_secure"],
        integrationId: json["integration_id"],
        profileId: json["profile_id"],
        hasParentTransaction: json["has_parent_transaction"],
        order: Order.fromJson(json["order"]),
        createdAt: DateTime.parse(json["created_at"]),
        transactionProcessedCallbackResponses: List<dynamic>.from(
            json["transaction_processed_callback_responses"].map((x) => x)),
        currency: json["currency"],
        sourceData: SourceData.fromJson(json["source_data"]),
        apiSource: json["api_source"],
        terminalId: json["terminal_id"],
        merchantCommission: json["merchant_commission"],
        installment: json["installment"],
        isVoid: json["is_void"],
        isRefund: json["is_refund"],
        data: KioskPaymentData.fromJson(json["data"]),
        isHidden: json["is_hidden"],
        paymentKeyClaims: PaymentKeyClaims.fromJson(json["payment_key_claims"]),
        errorOccured: json["error_occured"],
        isLive: json["is_live"],
        otherEndpointReference: json["other_endpoint_reference"],
        refundedAmountCents: json["refunded_amount_cents"],
        sourceId: json["source_id"],
        isCaptured: json["is_captured"],
        capturedAmount: json["captured_amount"],
        merchantStaffTag: json["merchant_staff_tag"],
        updatedAt: DateTime.parse(json["updated_at"]),
        owner: json["owner"],
        parentTransaction: json["parent_transaction"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "pending": pending,
        "amount_cents": amountCents,
        "success": success,
        "is_auth": isAuth,
        "is_capture": isCapture,
        "is_standalone_payment": isStandalonePayment,
        "is_voided": isVoided,
        "is_refunded": isRefunded,
        "is_3d_secure": is3DSecure,
        "integration_id": integrationId,
        "profile_id": profileId,
        "has_parent_transaction": hasParentTransaction,
        "order": order.toJson(),
        "created_at": createdAt.toIso8601String(),
        "transaction_processed_callback_responses": List<dynamic>.from(
            transactionProcessedCallbackResponses.map((x) => x)),
        "currency": currency,
        "source_data": sourceData.toJson(),
        "api_source": apiSource,
        "terminal_id": terminalId,
        "merchant_commission": merchantCommission,
        "installment": installment,
        "is_void": isVoid,
        "is_refund": isRefund,
        "data": data.toJson(),
        "is_hidden": isHidden,
        "payment_key_claims": paymentKeyClaims.toJson(),
        "error_occured": errorOccured,
        "is_live": isLive,
        "other_endpoint_reference": otherEndpointReference,
        "refunded_amount_cents": refundedAmountCents,
        "source_id": sourceId,
        "is_captured": isCaptured,
        "captured_amount": capturedAmount,
        "merchant_staff_tag": merchantStaffTag,
        "updated_at": updatedAt.toIso8601String(),
        "owner": owner,
        "parent_transaction": parentTransaction,
      };
}

class KioskPaymentData {
  KioskPaymentData({
    required this.billReference,
    required this.dueAmount,
    required this.cashoutAmount,
    required this.ref,
    required this.klass,
    required this.aggTerminal,
    required this.amount,
    required this.message,
    required this.gatewayIntegrationPk,
    required this.otp,
    required this.rrn,
    required this.paidThrough,
    required this.biller,
    required this.txnResponseCode,
    required this.fromUser,
  });

  final int? billReference;
  final int? dueAmount;
  final dynamic cashoutAmount;
  final dynamic ref;
  final String? klass;
  final dynamic aggTerminal;
  final dynamic amount;
  final String? message;
  final int? gatewayIntegrationPk;
  final String? otp;
  final dynamic rrn;
  final String? paidThrough;
  final dynamic biller;
  final String? txnResponseCode;
  final dynamic fromUser;

  factory KioskPaymentData.fromJson(Map<String, dynamic> json) =>
      KioskPaymentData(
        billReference: json["bill_reference"],
        dueAmount: json["due_amount"],
        cashoutAmount: json["cashout_amount"],
        ref: json["ref"],
        klass: json["klass"],
        aggTerminal: json["agg_terminal"],
        amount: json["amount"],
        message: json["message"],
        gatewayIntegrationPk: json["gateway_integration_pk"],
        otp: json["otp"],
        rrn: json["rrn"],
        paidThrough: json["paid_through"],
        biller: json["biller"],
        txnResponseCode: json["txn_response_code"],
        fromUser: json["from_user"],
      );

  Map<String, dynamic> toJson() => {
        "bill_reference": billReference,
        "due_amount": dueAmount,
        "cashout_amount": cashoutAmount,
        "ref": ref,
        "klass": klass,
        "agg_terminal": aggTerminal,
        "amount": amount,
        "message": message,
        "gateway_integration_pk": gatewayIntegrationPk,
        "otp": otp,
        "rrn": rrn,
        "paid_through": paidThrough,
        "biller": biller,
        "txn_response_code": txnResponseCode,
        "from_user": fromUser,
      };
}

class Order {
  Order({
    required this.id,
    required this.createdAt,
    required this.deliveryNeeded,
    required this.merchant,
    required this.collector,
    required this.amountCents,
    required this.shippingData,
    required this.currency,
    required this.isPaymentLocked,
    required this.isReturn,
    required this.isCancel,
    required this.isReturned,
    required this.isCanceled,
    required this.merchantOrderId,
    required this.walletNotification,
    required this.paidAmountCents,
    required this.notifyUserWithEmail,
    required this.items,
    required this.orderUrl,
    required this.commissionFees,
    required this.deliveryFeesCents,
    required this.deliveryVatCents,
    required this.paymentMethod,
    required this.merchantStaffTag,
    required this.apiSource,
    required this.data,
  });

  final int? id;
  final DateTime createdAt;
  final bool deliveryNeeded;
  final Merchant merchant;
  final dynamic collector;
  final int? amountCents;
  final IngData shippingData;
  final String? currency;
  final bool isPaymentLocked;
  final bool isReturn;
  final bool isCancel;
  final bool isReturned;
  final bool isCanceled;
  final dynamic merchantOrderId;
  final dynamic walletNotification;
  final int? paidAmountCents;
  final bool notifyUserWithEmail;
  final List<dynamic> items;
  final String? orderUrl;
  final int? commissionFees;
  final int? deliveryFeesCents;
  final int? deliveryVatCents;
  final String? paymentMethod;
  final dynamic merchantStaffTag;
  final String? apiSource;
  final ExtraClass data;

  factory Order.fromJson(Map<String, dynamic> json) => Order(
        id: json["id"],
        createdAt: DateTime.parse(json["created_at"]),
        deliveryNeeded: json["delivery_needed"],
        merchant: Merchant.fromJson(json["merchant"]),
        collector: json["collector"],
        amountCents: json["amount_cents"],
        shippingData: IngData.fromJson(json["shipping_data"]),
        currency: json["currency"],
        isPaymentLocked: json["is_payment_locked"],
        isReturn: json["is_return"],
        isCancel: json["is_cancel"],
        isReturned: json["is_returned"],
        isCanceled: json["is_canceled"],
        merchantOrderId: json["merchant_order_id"],
        walletNotification: json["wallet_notification"],
        paidAmountCents: json["paid_amount_cents"],
        notifyUserWithEmail: json["notify_user_with_email"],
        items: List<dynamic>.from(json["items"].map((x) => x)),
        orderUrl: json["order_url"],
        commissionFees: json["commission_fees"],
        deliveryFeesCents: json["delivery_fees_cents"],
        deliveryVatCents: json["delivery_vat_cents"],
        paymentMethod: json["payment_method"],
        merchantStaffTag: json["merchant_staff_tag"],
        apiSource: json["api_source"],
        data: ExtraClass.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt.toIso8601String(),
        "delivery_needed": deliveryNeeded,
        "merchant": merchant.toJson(),
        "collector": collector,
        "amount_cents": amountCents,
        "shipping_data": shippingData.toJson(),
        "currency": currency,
        "is_payment_locked": isPaymentLocked,
        "is_return": isReturn,
        "is_cancel": isCancel,
        "is_returned": isReturned,
        "is_canceled": isCanceled,
        "merchant_order_id": merchantOrderId,
        "wallet_notification": walletNotification,
        "paid_amount_cents": paidAmountCents,
        "notify_user_with_email": notifyUserWithEmail,
        "items": List<dynamic>.from(items.map((x) => x)),
        "order_url": orderUrl,
        "commission_fees": commissionFees,
        "delivery_fees_cents": deliveryFeesCents,
        "delivery_vat_cents": deliveryVatCents,
        "payment_method": paymentMethod,
        "merchant_staff_tag": merchantStaffTag,
        "api_source": apiSource,
        "data": data.toJson(),
      };
}

class ExtraClass {
  ExtraClass();

  factory ExtraClass.fromJson(Map<String, dynamic> json) => ExtraClass();

  Map<String, dynamic> toJson() => {};
}

class Merchant {
  Merchant({
    required this.id,
    required this.createdAt,
    required this.phones,
    required this.companyEmails,
    required this.companyName,
    required this.state,
    required this.country,
    required this.city,
    required this.postalCode,
    required this.street,
  });

  final int? id;
  final DateTime createdAt;
  final List<String> phones;
  final List<String> companyEmails;
  final String? companyName;
  final String? state;
  final String? country;
  final String? city;
  final String? postalCode;
  final String? street;

  factory Merchant.fromJson(Map<String, dynamic> json) => Merchant(
        id: json["id"],
        createdAt: DateTime.parse(json["created_at"]),
        phones: List<String>.from(json["phones"].map((x) => x)),
        companyEmails: List<String>.from(json["company_emails"].map((x) => x)),
        companyName: json["company_name"],
        state: json["state"],
        country: json["country"],
        city: json["city"],
        postalCode: json["postal_code"],
        street: json["street"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt.toIso8601String(),
        "phones": List<dynamic>.from(phones.map((x) => x)),
        "company_emails": List<dynamic>.from(companyEmails.map((x) => x)),
        "company_name": companyName,
        "state": state,
        "country": country,
        "city": city,
        "postal_code": postalCode,
        "street": street,
      };
}

class IngData {
  IngData({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.street,
    required this.building,
    required this.floor,
    required this.apartment,
    required this.city,
    required this.state,
    required this.country,
    required this.email,
    required this.phoneNumber,
    required this.postalCode,
    required this.extraDescription,
    required this.shippingMethod,
    required this.orderId,
    required this.order,
  });

  final int? id;
  final String? firstName;
  final String? lastName;
  final String? street;
  final String? building;
  final String? floor;
  final String? apartment;
  final String? city;
  final String? state;
  final String? country;
  final String? email;
  final String? phoneNumber;
  final String? postalCode;
  final String? extraDescription;
  final String? shippingMethod;
  final int? orderId;
  final int? order;

  factory IngData.fromJson(Map<String, dynamic> json) => IngData(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        street: json["street"],
        building: json["building"],
        floor: json["floor"],
        apartment: json["apartment"],
        city: json["city"],
        state: json["state"],
        country: json["country"],
        email: json["email"],
        phoneNumber: json["phone_number"],
        postalCode: json["postal_code"],
        extraDescription: json["extra_description"],
        shippingMethod: json["shipping_method"],
        orderId: json["order_id"],
        order: json["order"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "street": street,
        "building": building,
        "floor": floor,
        "apartment": apartment,
        "city": city,
        "state": state,
        "country": country,
        "email": email,
        "phone_number": phoneNumber,
        "postal_code": postalCode,
        "extra_description": extraDescription,
        "shipping_method": shippingMethod,
        "order_id": orderId,
        "order": order,
      };
}

class PaymentKeyClaims {
  PaymentKeyClaims({
    required this.amountCents,
    required this.pmkIp,
    required this.lockOrderWhenPaid,
    required this.billingData,
    required this.integrationId,
    required this.orderId,
    required this.currency,
    required this.exp,
    required this.extra,
    required this.userId,
  });

  final int? amountCents;
  final String? pmkIp;
  final bool lockOrderWhenPaid;
  final IngData billingData;
  final int? integrationId;
  final int? orderId;
  final String? currency;
  final int? exp;
  final ExtraClass extra;
  final int? userId;

  factory PaymentKeyClaims.fromJson(Map<String, dynamic> json) =>
      PaymentKeyClaims(
        amountCents: json["amount_cents"],
        pmkIp: json["pmk_ip"],
        lockOrderWhenPaid: json["lock_order_when_paid"],
        billingData: IngData.fromJson(json["billing_data"]),
        integrationId: json["integration_id"],
        orderId: json["order_id"],
        currency: json["currency"],
        exp: json["exp"],
        extra: ExtraClass.fromJson(json["extra"]),
        userId: json["user_id"],
      );

  Map<String, dynamic> toJson() => {
        "amount_cents": amountCents,
        "pmk_ip": pmkIp,
        "lock_order_when_paid": lockOrderWhenPaid,
        "billing_data": billingData.toJson(),
        "integration_id": integrationId,
        "order_id": orderId,
        "currency": currency,
        "exp": exp,
        "extra": extra.toJson(),
        "user_id": userId,
      };
}

class SourceData {
  SourceData({
    required this.subType,
    required this.pan,
    required this.type,
  });

  final String? subType;
  final String? pan;
  final String? type;

  factory SourceData.fromJson(Map<String, dynamic> json) => SourceData(
        subType: json["sub_type"],
        pan: json["pan"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "sub_type": subType,
        "pan": pan,
        "type": type,
      };
}
