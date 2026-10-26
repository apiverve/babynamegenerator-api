/// Response models for the Baby Name Generator API.

/// API Response wrapper.
class BabynamegeneratorResponse {
  final String status;
  final dynamic error;
  final BabynamegeneratorData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  BabynamegeneratorResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory BabynamegeneratorResponse.fromJson(Map<String, dynamic> json) => BabynamegeneratorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? BabynamegeneratorData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Baby Name Generator API.

class BabynamegeneratorData {
  num? count;
  List<BabynamegeneratorDataNamesItem>? names;

  BabynamegeneratorData({
    this.count,
    this.names,
  });

  factory BabynamegeneratorData.fromJson(Map<String, dynamic> json) => BabynamegeneratorData(
      count: json['count'],
      names: (json['names'] as List?)?.map((e) => BabynamegeneratorDataNamesItem.fromJson(e)).toList(),
    );
}

class BabynamegeneratorDataNamesItem {
  String? firstName;
  String? middleName;
  String? fullName;
  String? avatar;

  BabynamegeneratorDataNamesItem({
    this.firstName,
    this.middleName,
    this.fullName,
    this.avatar,
  });

  factory BabynamegeneratorDataNamesItem.fromJson(Map<String, dynamic> json) => BabynamegeneratorDataNamesItem(
      firstName: json['firstName'],
      middleName: json['middleName'],
      fullName: json['fullName'],
      avatar: json['avatar'],
    );
}

class BabynamegeneratorRequest {
  String gender;
  int? count;
  bool? includeAvatar;

  BabynamegeneratorRequest({
    required this.gender,
    this.count,
    this.includeAvatar,
  });

  Map<String, dynamic> toJson() => {
      'gender': gender,
      if (count != null) 'count': count,
      if (includeAvatar != null) 'includeAvatar': includeAvatar,
    };
}
