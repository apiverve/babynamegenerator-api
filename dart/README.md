# Baby Name Generator API - Dart/Flutter Client

Baby Name Generator suggests first and middle name combinations for boys and girls based on a selected gender. Paid plans can request multiple names at once and include child avatar images.

[![pub package](https://img.shields.io/pub/v/apiverve_babynamegenerator.svg)](https://pub.dev/packages/apiverve_babynamegenerator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Baby Name Generator API](https://apiverve.com/marketplace/babynamegenerator?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_babynamegenerator: ^1.2.3
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
      'count': 1,
      'includeAvatar': true
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
    "count": 1,
    "names": [
      {
        "firstName": "Myra",
        "middleName": "Sherri",
        "fullName": "Myra Sherri",
        "avatar": "https://storage.googleapis.com/apiverve/APIResources/faces/Female/Child/11223344.jpg?X-Goog-Signature=..."
      }
    ]
  }
}
```

## API Reference

- **API Home:** [Baby Name Generator API](https://apiverve.com/marketplace/babynamegenerator?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/babynamegenerator](https://docs.apiverve.com/ref/babynamegenerator?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
