# OmniAuth Cloudsdale

Official OmniAuth 1.0 strategy for Cloudsdale.

## Installing

Add to your `Gemfile`:

```ruby
gem 'omniauth-cloudsdale', '~> 0.0.1'
```

Then `bundle install`.

## Basic Usage

```ruby

use OmniAuth::Builder do
  provider :cloudsdale, ENV['CLOUDSDALE_APP_ID'], ENV['CLOUDSDALE_APP_SECRET']
end

```

## Cloudsdale Docs

If you want to learn further about the Cloudsdale service,
register an application or read the developer documentation.
Visit the developer portal.

[Cloudsdale Developer Portal](http://dev.cloudsdale.org/).

## Auth Hash

Here's an example *Auth Hash* available in `request.env['omniauth.auth']`:

```ruby
{
  "provider" => "cloudsdale",
  "uid" => "abcdef1234",
  "info" => {
    "nickname" => "My Display Name",
    "image" => "http://avatar.cloudsdale.org/user/:uid.png?s=128"
  },
  "credentials" => {
    "token" => "abcd1234",
    "expires" => false
  },
  "extra" => {
    "raw_info" => {
      "username" => "my_username",
      "display_name" => "My Display Name"
      "avatar" => "http://avatar.cloudsdale.org/user/:uid.png?s=128"
    }
  }
}
```

## License

Copyright (c) 2013 by Philip Vieira

Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and associated documentation files (the "Software"),
to deal in the Software without restriction, including without limitation
the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.
