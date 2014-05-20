# dotenv-configuration

A utility method for using dotenv as a configuration manager

## Installation

Add this line to your application's Gemfile:

    gem 'dotenv-configuration'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dotenv-configuration

## Usage

```ruby
require 'dotenv-configuration'
Dotenv.configure(
  'TWITTER_API_KEY' => 'default value',
  'TWITTER_API_SECRET' => 'default value', 
)
```

`Dotenv.configure` will call `Dotenv.load` internally.

if `.env` file or `'TWITTER_API_KEY'` is empty,
$EDITOR will spin up and you can set these keys as [pit.gem](https://github.com/cho45/pit).

## See also

* [pit.gem](https://github.com/cho45/pit)

## Thanks

Original idea from [@linyows](https://github.com/linyows/)

## Contributing

Usual GitHub way.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
