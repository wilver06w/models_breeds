import 'package:flutter_test/flutter_test.dart';
import 'package:models_breeds/app/models/country/loca_le.dart';

void main() {
  group('Locale Test Model', () {
    test('should create a valid instance from a JSON map', () {
      // Creamos otra prueba unitaria llamada "should create a valid instance from a JSON map"
      final jsonMap = {
        // Creamos un mapa de JSON de ejemplo
        'languageCode': 'ES',
        'countryCode': '57',
      };

      final locale = Locale.fromJson(
        jsonMap,
      ); // Creamos una instancia de BusinessAddress a partir del mapa de JSON

      expect(
        locale,
        isA<Locale>(),
      );
      // Verificamos que la instancia creada tenga los valores esperados para cada propiedad
      expect(locale.countryCode, '57');
      expect(locale.languageCode, 'ES');
    });
  });
}
