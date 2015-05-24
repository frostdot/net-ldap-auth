# coding: utf-8

require 'net/ldap'

module Net
  class LDAP
    module Auth
      module_function
      def auth(param)
        return false unless param
        return false unless param[:host] && param[:host] != ""
        return false unless param[:userdn] && param[:userdn] != ""
        return false unless param[:password] && param[:password] != ""
        authenticate(param[:host], param[:userdn], param[:password])
      end
      def authenticate(host, userdn, password)
        ldap = Net::LDAP.new(
          :host => host,
          :port => 389,
          :auth => {
            :method => :simple,
            :username => userdn,
            :password => password
          }
        )
        ldap.bind
      end
    end
  end
end
