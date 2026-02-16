# Baby Name Generator API - Dart/Flutter Client

Baby Name Generator is a simple tool for generating baby names. It returns a list of baby names.

[![pub package](https://img.shields.io/pub/v/apiverve_babynamegenerator.svg)](https://pub.dev/packages/apiverve_babynamegenerator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Baby Name Generator API](https://apiverve.com/marketplace/babynamegenerator?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_babynamegenerator: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_babynamegenerator/apiverve_babynamegenerator.dart';

void main() async {
  final client = BabynamegeneratorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'gender': 'male',
      'count': 1
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "count": 3,
    "names": [
      {
        "firstName": "Gladys",
        "middleName": "Emily",
        "fullName": "Gladys Emily"
      },
      {
        "firstName": "Sandra",
        "middleName": "Tasha",
        "fullName": "Sandra Tasha"
      },
      {
        "firstName": "Patricia",
        "middleName": "Rosemary",
        "fullName": "Patricia Rosemary"
      }
    ]
  }
}
```

## API Reference

- **API Home:** [Baby Name Generator API](https://apiverve.com/marketplace/babynamegenerator?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/babynamegenerator](https://docs.apiverve.com/ref/babynamegenerator?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
