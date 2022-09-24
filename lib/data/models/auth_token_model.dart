class AuthTokenModel {
  final String? token;
  final Profile? profile;
  AuthTokenModel({
    required this.token,
    required this.profile,
  });

  factory AuthTokenModel.fromJson(Map<String, dynamic> json) => AuthTokenModel(
        token: json["token"],
        profile: Profile.fromJson(json["profile"]),
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "profile": profile!.toJson(),
      };
}

class Profile {
  Profile({
    required this.id,
    required this.user,
    required this.createdAt,
    required this.active,
    required this.profileType,
    required this.phones,
    required this.companyEmails,
    required this.companyName,
    required this.state,
    required this.country,
    required this.city,
    required this.postalCode,
    required this.street,
    required this.emailNotification,
    required this.orderRetrievalEndpodynamic,
    required this.deliveryUpdateEndpodynamic,
    required this.logoUrl,
    required this.isMobadra,
    required this.sector,
    required this.activationMethod,
    required this.signedUpThrough,
    required this.failedAttempts,
    required this.customExportColumns,
    required this.serverIp,
    required this.username,
    required this.primaryPhoneNumber,
    required this.primaryPhoneVerified,
    required this.isTempPassword,
    required this.otpSentAt,
    required this.otpSentTo,
    required this.otpValidatedAt,
    required this.awbBanner,
    required this.emailBanner,
    required this.identificationNumber,
    required this.deliveryStatusCallback,
    required this.merchantExternalLink,
    required this.merchantStatus,
    required this.deactivatedByBank,
    required this.bankDeactivationReason,
    required this.bankMerchantStatus,
    required this.nationalId,
    required this.superAgent,
    required this.walletLimitProfile,
    required this.address,
    required this.commercialRegistration,
    required this.commercialRegistrationArea,
    required this.distributorCode,
    required this.distributorBranchCode,
    required this.allowTerminalOrderId,
    required this.allowEncryptionBypass,
    required this.walletPhoneNumber,
    required this.suspicious,
    required this.latitude,
    required this.longitude,
    required this.bankStaffs,
    required this.bankRejectionReason,
    required this.bankReceivedDocuments,
    required this.bankMerchantDigitalStatus,
    required this.bankDigitalRejectionReason,
    required this.filledBusinessData,
    required this.dayStartTime,
    required this.dayEndTime,
    required this.withholdTransfers,
    required this.smsSenderName,
    required this.withholdTransfersReason,
    required this.withholdTransfersNotes,
    required this.canBillDepositWithCard,
    required this.canTopupMerchants,
    required this.topupTransferId,
    required this.referralEligible,
    required this.paymobAppMerchant,
    required this.settlementFrequency,
    required this.dayOfTheWeek,
    required this.dayOfTheMonth,
    required this.allowTransactionNotifications,
    required this.allowTransferNotifications,
    required this.sallefnyAmountWhole,
    required this.sallefnyFeesWhole,
    required this.paymobAppFirstLogin,
    required this.paymobAppLastActivity,
    required this.acqPartner,
    required this.salesOwner,
    required this.dom,
    required this.bankRelated,
    required this.permissions,
  });

  final dynamic id;
  final User user;
  final DateTime createdAt;
  final bool active;
  final String profileType;
  final List<String> phones;
  final List<String> companyEmails;
  final String companyName;
  final String state;
  final String country;
  final String city;
  final String postalCode;
  final String street;
  final bool emailNotification;
  final dynamic orderRetrievalEndpodynamic;
  final dynamic deliveryUpdateEndpodynamic;
  final dynamic logoUrl;
  final bool isMobadra;
  final String sector;
  final dynamic activationMethod;
  final dynamic signedUpThrough;
  final dynamic failedAttempts;
  final List<dynamic> customExportColumns;
  final List<dynamic> serverIp;
  final dynamic username;
  final String primaryPhoneNumber;
  final bool primaryPhoneVerified;
  final bool isTempPassword;
  final DateTime otpSentAt;
  final String otpSentTo;
  final DateTime otpValidatedAt;
  final dynamic awbBanner;
  final dynamic emailBanner;
  final dynamic identificationNumber;
  final String deliveryStatusCallback;
  final dynamic merchantExternalLink;
  final dynamic merchantStatus;
  final bool deactivatedByBank;
  final dynamic bankDeactivationReason;
  final dynamic bankMerchantStatus;
  final dynamic nationalId;
  final dynamic superAgent;
  final dynamic walletLimitProfile;
  final dynamic address;
  final dynamic commercialRegistration;
  final dynamic commercialRegistrationArea;
  final dynamic distributorCode;
  final dynamic distributorBranchCode;
  final bool allowTerminalOrderId;
  final bool allowEncryptionBypass;
  final dynamic walletPhoneNumber;
  final dynamic suspicious;
  final dynamic latitude;
  final dynamic longitude;
  final BankStaffs bankStaffs;
  final dynamic bankRejectionReason;
  final bool bankReceivedDocuments;
  final dynamic bankMerchantDigitalStatus;
  final dynamic bankDigitalRejectionReason;
  final bool filledBusinessData;
  final String dayStartTime;
  final dynamic dayEndTime;
  final bool withholdTransfers;
  final String smsSenderName;
  final dynamic withholdTransfersReason;
  final dynamic withholdTransfersNotes;
  final bool canBillDepositWithCard;
  final bool canTopupMerchants;
  final dynamic topupTransferId;
  final bool referralEligible;
  final bool paymobAppMerchant;
  final dynamic settlementFrequency;
  final dynamic dayOfTheWeek;
  final dynamic dayOfTheMonth;
  final bool allowTransactionNotifications;
  final bool allowTransferNotifications;
  final dynamic sallefnyAmountWhole;
  final dynamic sallefnyFeesWhole;
  final dynamic paymobAppFirstLogin;
  final dynamic paymobAppLastActivity;
  final dynamic acqPartner;
  final String salesOwner;
  final dynamic dom;
  final dynamic bankRelated;
  final List<dynamic> permissions;

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        id: json["id"],
        user: User.fromJson(json["user"]),
        createdAt: DateTime.parse(json["created_at"]),
        active: json["active"],
        profileType: json["profile_type"],
        phones: List<String>.from(json["phones"].map((x) => x)),
        companyEmails: List<String>.from(json["company_emails"].map((x) => x)),
        companyName: json["company_name"],
        state: json["state"],
        country: json["country"],
        city: json["city"],
        postalCode: json["postal_code"],
        street: json["street"],
        emailNotification: json["email_notification"],
        orderRetrievalEndpodynamic: json["order_retrieval_endpodynamic"],
        deliveryUpdateEndpodynamic: json["delivery_update_endpodynamic"],
        logoUrl: json["logo_url"],
        isMobadra: json["is_mobadra"],
        sector: json["sector"],
        activationMethod: json["activation_method"],
        signedUpThrough: json["signed_up_through"],
        failedAttempts: json["failed_attempts"],
        customExportColumns:
            List<dynamic>.from(json["custom_export_columns"].map((x) => x)),
        serverIp: List<dynamic>.from(json["server_IP"].map((x) => x)),
        username: json["username"],
        primaryPhoneNumber: json["primary_phone_number"],
        primaryPhoneVerified: json["primary_phone_verified"],
        isTempPassword: json["is_temp_password"],
        otpSentAt: DateTime.parse(json["otp_sent_at"]),
        otpSentTo: json["otp_sent_to"],
        otpValidatedAt: DateTime.parse(json["otp_validated_at"]),
        awbBanner: json["awb_banner"],
        emailBanner: json["email_banner"],
        identificationNumber: json["identification_number"],
        deliveryStatusCallback: json["delivery_status_callback"],
        merchantExternalLink: json["merchant_external_link"],
        merchantStatus: json["merchant_status"],
        deactivatedByBank: json["deactivated_by_bank"],
        bankDeactivationReason: json["bank_deactivation_reason"],
        bankMerchantStatus: json["bank_merchant_status"],
        nationalId: json["national_id"],
        superAgent: json["super_agent"],
        walletLimitProfile: json["wallet_limit_profile"],
        address: json["address"],
        commercialRegistration: json["commercial_registration"],
        commercialRegistrationArea: json["commercial_registration_area"],
        distributorCode: json["distributor_code"],
        distributorBranchCode: json["distributor_branch_code"],
        allowTerminalOrderId: json["allow_terminal_order_id"],
        allowEncryptionBypass: json["allow_encryption_bypass"],
        walletPhoneNumber: json["wallet_phone_number"],
        suspicious: json["suspicious"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        bankStaffs: BankStaffs.fromJson(json["bank_staffs"]),
        bankRejectionReason: json["bank_rejection_reason"],
        bankReceivedDocuments: json["bank_received_documents"],
        bankMerchantDigitalStatus: json["bank_merchant_digital_status"],
        bankDigitalRejectionReason: json["bank_digital_rejection_reason"],
        filledBusinessData: json["filled_business_data"],
        dayStartTime: json["day_start_time"],
        dayEndTime: json["day_end_time"],
        withholdTransfers: json["withhold_transfers"],
        smsSenderName: json["sms_sender_name"],
        withholdTransfersReason: json["withhold_transfers_reason"],
        withholdTransfersNotes: json["withhold_transfers_notes"],
        canBillDepositWithCard: json["can_bill_deposit_with_card"],
        canTopupMerchants: json["can_topup_merchants"],
        topupTransferId: json["topup_transfer_id"],
        referralEligible: json["referral_eligible"],
        paymobAppMerchant: json["paymob_app_merchant"],
        settlementFrequency: json["settlement_frequency"],
        dayOfTheWeek: json["day_of_the_week"],
        dayOfTheMonth: json["day_of_the_month"],
        allowTransactionNotifications: json["allow_transaction_notifications"],
        allowTransferNotifications: json["allow_transfer_notifications"],
        sallefnyAmountWhole: json["sallefny_amount_whole"],
        sallefnyFeesWhole: json["sallefny_fees_whole"],
        paymobAppFirstLogin: json["paymob_app_first_login"],
        paymobAppLastActivity: json["paymob_app_last_activity"],
        acqPartner: json["acq_partner"],
        salesOwner: json["sales_owner"],
        dom: json["dom"],
        bankRelated: json["bank_related"],
        permissions: List<dynamic>.from(json["permissions"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user": user.toJson(),
        "created_at": createdAt.toIso8601String(),
        "active": active,
        "profile_type": profileType,
        "phones": List<dynamic>.from(phones.map((x) => x)),
        "company_emails": List<dynamic>.from(companyEmails.map((x) => x)),
        "company_name": companyName,
        "state": state,
        "country": country,
        "city": city,
        "postal_code": postalCode,
        "street": street,
        "email_notification": emailNotification,
        "order_retrieval_endpodynamic": orderRetrievalEndpodynamic,
        "delivery_update_endpodynamic": deliveryUpdateEndpodynamic,
        "logo_url": logoUrl,
        "is_mobadra": isMobadra,
        "sector": sector,
        "activation_method": activationMethod,
        "signed_up_through": signedUpThrough,
        "failed_attempts": failedAttempts,
        "custom_export_columns":
            List<dynamic>.from(customExportColumns.map((x) => x)),
        "server_IP": List<dynamic>.from(serverIp.map((x) => x)),
        "username": username,
        "primary_phone_number": primaryPhoneNumber,
        "primary_phone_verified": primaryPhoneVerified,
        "is_temp_password": isTempPassword,
        "otp_sent_at": otpSentAt.toIso8601String(),
        "otp_sent_to": otpSentTo,
        "otp_validated_at": otpValidatedAt.toIso8601String(),
        "awb_banner": awbBanner,
        "email_banner": emailBanner,
        "identification_number": identificationNumber,
        "delivery_status_callback": deliveryStatusCallback,
        "merchant_external_link": merchantExternalLink,
        "merchant_status": merchantStatus,
        "deactivated_by_bank": deactivatedByBank,
        "bank_deactivation_reason": bankDeactivationReason,
        "bank_merchant_status": bankMerchantStatus,
        "national_id": nationalId,
        "super_agent": superAgent,
        "wallet_limit_profile": walletLimitProfile,
        "address": address,
        "commercial_registration": commercialRegistration,
        "commercial_registration_area": commercialRegistrationArea,
        "distributor_code": distributorCode,
        "distributor_branch_code": distributorBranchCode,
        "allow_terminal_order_id": allowTerminalOrderId,
        "allow_encryption_bypass": allowEncryptionBypass,
        "wallet_phone_number": walletPhoneNumber,
        "suspicious": suspicious,
        "latitude": latitude,
        "longitude": longitude,
        "bank_staffs": bankStaffs.toJson(),
        "bank_rejection_reason": bankRejectionReason,
        "bank_received_documents": bankReceivedDocuments,
        "bank_merchant_digital_status": bankMerchantDigitalStatus,
        "bank_digital_rejection_reason": bankDigitalRejectionReason,
        "filled_business_data": filledBusinessData,
        "day_start_time": dayStartTime,
        "day_end_time": dayEndTime,
        "withhold_transfers": withholdTransfers,
        "sms_sender_name": smsSenderName,
        "withhold_transfers_reason": withholdTransfersReason,
        "withhold_transfers_notes": withholdTransfersNotes,
        "can_bill_deposit_with_card": canBillDepositWithCard,
        "can_topup_merchants": canTopupMerchants,
        "topup_transfer_id": topupTransferId,
        "referral_eligible": referralEligible,
        "paymob_app_merchant": paymobAppMerchant,
        "settlement_frequency": settlementFrequency,
        "day_of_the_week": dayOfTheWeek,
        "day_of_the_month": dayOfTheMonth,
        "allow_transaction_notifications": allowTransactionNotifications,
        "allow_transfer_notifications": allowTransferNotifications,
        "sallefny_amount_whole": sallefnyAmountWhole,
        "sallefny_fees_whole": sallefnyFeesWhole,
        "paymob_app_first_login": paymobAppFirstLogin,
        "paymob_app_last_activity": paymobAppLastActivity,
        "acq_partner": acqPartner,
        "sales_owner": salesOwner,
        "dom": dom,
        "bank_related": bankRelated,
        "permissions": List<dynamic>.from(permissions.map((x) => x)),
      };
}

class BankStaffs {
  BankStaffs();

  factory BankStaffs.fromJson(Map<String, dynamic> json) => BankStaffs();

  Map<String, dynamic> toJson() => {};
}

class User {
  User({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.dateJoined,
    required this.email,
    required this.isActive,
    required this.isStaff,
    required this.isSuperuser,
    required this.lastLogin,
    required this.groups,
    required this.userPermissions,
  });

  final dynamic id;
  final String username;
  final String firstName;
  final String lastName;
  final DateTime dateJoined;
  final String email;
  final bool isActive;
  final bool isStaff;
  final bool isSuperuser;
  final dynamic lastLogin;
  final List<dynamic> groups;
  final List<dynamic> userPermissions;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        username: json["username"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        dateJoined: DateTime.parse(json["date_joined"]),
        email: json["email"],
        isActive: json["is_active"],
        isStaff: json["is_staff"],
        isSuperuser: json["is_superuser"],
        lastLogin: json["last_login"],
        groups: List<dynamic>.from(json["groups"].map((x) => x)),
        userPermissions:
            List<dynamic>.from(json["user_permissions"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "first_name": firstName,
        "last_name": lastName,
        "date_joined": dateJoined.toIso8601String(),
        "email": email,
        "is_active": isActive,
        "is_staff": isStaff,
        "is_superuser": isSuperuser,
        "last_login": lastLogin,
        "groups": List<dynamic>.from(groups.map((x) => x)),
        "user_permissions": List<dynamic>.from(userPermissions.map((x) => x)),
      };
}
