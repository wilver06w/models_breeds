import 'package:flutter_test/flutter_test.dart';
import 'package:models_breeds/app/models/breed.dart';

void main() {
  group('Breed', () {
    test('should create a valid instance from a JSON map', () {
      // Creamos otra prueba unitaria llamada "should create a valid instance from a JSON map"
      final jsonMap = {
        // Creamos un mapa de JSON de ejemplo
        'weight': {
          'imperial': '7-10',
          'metric': '3-5',
        },
        'id': 'abys',
        'name': 'abyssinian',
        'cfa_url': 'url',
        'vetstreet_url': 'vsurl',
        'vcahospitals_url': 'vsurls',
        'temperament': 'Active, energi',
        'origin': 'Egypt',
        'country_codes': 'EG',
        'country_code': 'EG',
        'description': 'description',
        'life_span': '10',
        'indoor': 0,
        'lap': 0,
        'alt_names': 'alt',
        'adaptability': 5,
        'affection_level': 5,
        'child_friendly': 4,
        'dog_friendly': 5,
        'energy_level': 5,
        'grooming': 5,
        'health_issues': 5,
        'intelligence': 5,
        'shedding_level': 5,
        'social_needs': 5,
        'stranger_friendly': 5,
        'vocalisation': 5,
        'experimental': 3,
        'hairless': 3,
        'natural': 3,
        'rare': 3,
        'rex': 3,
        'suppressed_tail': 0,
        'short_legs': 0,
        'wikipedia_url': 'wikiurl',
        'hypoallergenic': 0,
        'reference_image_id': 'refid',
      };

      final businessAddress = Breed.fromJson(
        jsonMap,
      ); // Creamos una instancia de BusinessAddress a partir del mapa de JSON

      expect(
        businessAddress,
        isA<Breed>(),
      );
      // Verificamos que la instancia creada tenga los valores esperados para cada propiedad
      expect(businessAddress.adaptability, 5);
      expect(businessAddress.description, 'description');
      expect(businessAddress.referenceImageId, 'refid');
      expect(businessAddress.name, 'abyssinian');
      expect(businessAddress.hypoallergenic, 0);
      expect(businessAddress.shortLegs, 0);
    });
  });
}
