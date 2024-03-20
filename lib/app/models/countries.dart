import 'package:models_breeds/app/models/country/country.dart';
import 'package:models_breeds/app/models/country/loca_le.dart';

class Countries {
  const Countries({
    required this.config,
  });

  final Map<String, dynamic> config;

  List<Country> get all {
    return [
      Country(
        code: 'CO',
        name: 'Colombia',
        api: (config['api'] as Map)['co'],
        locale: const Locale(
          languageCode: 'es',
          countryCode: 'CO',
        ),
      ),
    ];
  }
}
