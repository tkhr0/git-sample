# frozen_string_literal: true

require_relative './connection'

# chat server class
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
      next if messages.empty?

      messages.each do |message|
        @connection.broadcast message
      end
    end
  end
end
