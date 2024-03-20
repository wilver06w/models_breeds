import 'package:flutter_test/flutter_test.dart';
import 'package:models_breeds/app/models/country/country.dart';
import 'package:models_breeds/app/models/country/loca_le.dart';

void main() {
  group('Country Test Model', () {
    test('should create a valid instance from a JSON map', () {
      // Creamos otra prueba unitaria llamada "should create a valid instance from a JSON map"
      final jsonMap = {
        // Creamos un mapa de JSON de ejemplo
        'code': '1',
        'name': 'Colombia',
        'api': 'url',
        'locale': {
          'languageCode': 'ES',
          'countryCode': '57',
        }
      };

      final country = Country.fromJson(
        jsonMap,
      ); // Creamos una instancia de BusinessAddress a partir del mapa de JSON

      expect(
        country,
        isA<Country>(),
      );
      // Verificamos que la instancia creada tenga los valores esperados para cada propiedad
      expect(country.code, '1');
      expect(country.name, 'Colombia');
      expect(country.api, 'url');
      expect(
        country.locale,
        const Locale(
          languageCode: 'ES',
          countryCode: '57',
        ),
      );
    });
  });
}
