# Baby Name Generator API - Ruby Gem

Baby Name Generator suggests first and middle name combinations for boys and girls based on a selected gender. Paid plans can request multiple names at once and include child avatar images.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_babynamegenerator'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_babynamegenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_babynamegenerator'

# Initialize the client
client = APIVerve::Babynamegenerator::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  gender: "male",
  count: 1,
  includeAvatar: true
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ gender: "male", count: 1, includeAvatar: true })
  puts response["data"]
rescue APIVerve::Babynamegenerator::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Babynamegenerator::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Babynamegenerator::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/babynamegenerator?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/babynamegenerator?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/babynamegenerator?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
