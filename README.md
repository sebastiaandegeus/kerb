# Kerb

[![Build Status](https://travis-ci.org/sebastiaandegeus/kerb.svg?branch=master)](https://travis-ci.org/sebastiaandegeus/kerb)
[![Code Climate](https://codeclimate.com/github/sebastiaandegeus/kerb/badges/gpa.svg)](https://codeclimate.com/github/sebastiaandegeus/kerb)
[![Scrutinizer Code Quality](https://scrutinizer-ci.com/g/sebastiaandegeus/kerb/badges/quality-score.png?b=master)](https://scrutinizer-ci.com/g/sebastiaandegeus/kerb/?branch=master)

__ERB__ rendering can be a little annoying at times. So this library aims to solve this problem by offering an easy interface to render ERB from a string, from a file or towards a file.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kerb'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install kerb
```

## Usage

### Render a string

```ruby
erb = 'my <%= @foo %> <%= @bar %>'
vars = {
  foo: 'lovely',
  bar: 'garden'
}

Kerb.render(erb, vars) #=> "my lovely garden"
```

### Render to a file

```ruby
erb = 'my <%= @foo %> <%= @bar %>'
vars = {
  foo: 'lovely',
  bar: 'garden'
}
file = 'path_to_file'

Kerb.render_to_file(erb, vars, file)

File.read(file) #=> "my lovely garden"
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sebastiaandegeus/kerb. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

Copyright (c) 2016 Sebastiaan de Geus

The gem is available as open source under the terms of the [MIT License](https://github.com/sebastiaandegeus/kerb/blob/master/LICENSE).



