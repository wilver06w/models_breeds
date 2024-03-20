import 'package:flutter_test/flutter_test.dart';
import 'package:models_breeds/app/models/countries.dart';
import 'package:models_breeds/app/models/country/country.dart';
import 'package:models_breeds/app/models/country/loca_le.dart';

void main() {
  group('Countries', () {
    test('should create a valid instance from a JSON map', () {
      // Creamos otra prueba unitaria llamada "should create a valid instance from a JSON map"
      final jsonMap = {
        "api": {
          "co": "https://api.thecatapi.com",
        },
        "app_name": "app_catbreeds",
        "environment": "develop"
      };

      final countriesData = Countries(
        config: jsonMap,
      ); // Creamos una instancia de countriesData a partir del mapa de JSON

      expect(
        countriesData,
        isA<Countries>(),
      );
      expect(
        countriesData.all,
        isA<List<Country>>(),
      );
      // Verificamos que la instancia creada tenga los valores esperados para cada propiedad
      final List<Country> listCountry = [
        const Country(
          code: 'CO',
          name: 'Colombia',
          api: 'https://api.thecatapi.com',
          locale: Locale(
            languageCode: 'es',
            countryCode: 'CO',
          ),
        )
      ];
      expect(countriesData.all, listCountry);
    });
  });
}
