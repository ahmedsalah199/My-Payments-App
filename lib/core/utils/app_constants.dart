class AppConstants {
  static const String apiKey =
      "ZXlKaGJHY2lPaUpJVXpVeE1pSXNJblI1Y0NJNklrcFhWQ0o5LmV5SnVZVzFsSWpvaWFXNXBkR2xoYkNJc0luQnliMlpwYkdWZmNHc2lPalF5TVRjeE5Td2lZMnhoYzNNaU9pSk5aWEpqYUdGdWRDSjkud2hFZmI3QnRuOGdtU3dQSG5lWklLNmh2UUFLYWxYdGpEZk5SYTVzUzhEbU9jamdJRWRTZHh1c3VkcWJVcFU0TThXeW01bUJ4WVowOFlOeEdIMEVhNFE=";
  static String? authToken = '';
  static String? orderId = '';

  static String? paymentTokenCard = '';
  static String? paymentTokenKiosk = '';
  static String? paymentTokenMobileWallet = '';

  static const int integrationsIdCard = 2685018;
  static const String integrationsIdKiosk = '2685862';
  static const String integrationsIdMobileWallet = '2816956';
  static String urlMobileWallet = '';

  static String? refCode = '';

  static String? iframesCard =
      'https://accept.paymob.com/api/acceptance/iframes/599554?payment_token=';

  static const String baseUrl = 'https://accept.paymob.com/api/';
  static const String bath = '';
  static const String contentType = 'Content-Type';
  static const String applicationJson = 'application/json';
  static const int apiTimeOut = 20000;
}
