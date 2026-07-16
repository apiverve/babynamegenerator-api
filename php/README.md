# Baby Name Generator API - PHP Package

Baby Name Generator is a simple tool for generating baby names. It returns a list of baby names.

## Installation

Install via Composer:

```bash
composer require apiverve/babynamegenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Babynamegenerator\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'gender' => 'male',
    'count' => 1,
    'includeAvatar' => true
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Babynamegenerator\Client;
use APIVerve\Babynamegenerator\Exceptions\APIException;
use APIVerve\Babynamegenerator\Exceptions\ValidationException;

try {
    $response = $client->execute(['gender' => 'male', 'count' => 1, 'includeAvatar' => true]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/babynamegenerator?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/babynamegenerator?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/babynamegenerator?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
