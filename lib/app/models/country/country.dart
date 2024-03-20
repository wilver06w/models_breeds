import 'package:equatable/equatable.dart';
import 'loca_le.dart';

class Country extends Equatable {
  const Country({
    this.code,
    this.name,
    this.api,
    this.locale,
  });
  final String? code;
  final String? name;
  final String? api;
  final Locale? locale;

  Country copyWith({
    String? code,
    String? name,
    String? api,
    Locale? locale,
  }) {
    return Country(
      code: code ?? this.code,
      name: name ?? this.name,
      api: api ?? this.api,
      locale: locale ?? this.locale,
    );
  }

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      code: json['code'] as String?,
      name: json['name'] as String?,
      api: json['api'] as String?,
      locale: json['locale'] == null
          ? null
          : Locale.fromJson(json['locale'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'name': name,
      'api': api,
      'locale': locale?.toJson() ?? {},
    };
  }

  @override
  List<Object?> get props {
    return [
      code,
      name,
      api,
      locale,
    ];
  }
}
