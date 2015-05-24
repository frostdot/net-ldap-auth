# Net::Ldap::Auth

Allows simple authentication for LDAP with net-ldap gem

## Installation

```ruby
gem 'net-ldap-auth', github: 'frostdot/net-ldap-auth'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install net-ldap-auth.git

## Usage

```ruby
require 'net/ldap/auth'
if Net::LDAP::Auth.auth(host: "LDAP server address", userdn: "User full DN", password: "password")
  puts "Auth ok"
end
```
## License

This software is released under the MIT License.
See the [LICENSE](LICENSE.txt) file for license rights and limitations (MIT).

