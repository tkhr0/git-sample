require_relative './connection'

class Client
  def initialize username
    @username = username
    connect
  end

  def send message
    @connection.send(@username, message)
  end

  private

  def connect
    @connection = Connection.new('192.168.1.1')
  end
end
