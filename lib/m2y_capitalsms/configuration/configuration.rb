# frozen_string_literal: true

module M2yCapitalsms
  class Configuration

    attr_writer :username, :password

    def initialize #:nodoc:
      @username = nil
      @capitalsms_env = nil
      @client_secret = nil
    end

    def username
      @username
    end

    def password
      @password
    end

  end
end
