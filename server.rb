require_relative './connection'

class Server
  def initialize
    @connection = Connection.new('127.0.0.1')
  end

  def main
    poll
  end

  private

  def poll
    loop do
      messages = @connection.receive
       unless messages.empty?
         messages.each do |message|
           @connection.broadcast message
         end
       end
    end
  end
end
