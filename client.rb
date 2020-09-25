# frozen_string_literal: true

require_relative './connection'

# chat client class
class Client
  def initialize(username)
    @username = username
    connect
  end

  def send(message)
    @connection.send(@username, message)
  end

  private

  def connect
    @connection = Connection.new('192.168.1.1')
    @connection.connect(Socket.ip_address_list.ip_address)
  end
end
