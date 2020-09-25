# frozen_string_literal: true

# connection class
class Connection
  @@clients = []

  def initialize(server_ip)
    @ip = server_ip
    bind
  end

  def bind
    puts "bind port #{@ip}:2345"
  end

  def connect(ip)
    @@clients << ip
    true
  end

  def send(username, message)
    puts "send #{@ip}: [#{username}] #{message}"
  end

  def receive
    [
      '[hoge] hi! hello!',
      '[fuga] hi! how are you?'
    ]
  end

  def broadcast(message)
    @@clients.each do |client_ip|
      echo client_ip, message
    end
  end

  private

  def echo(ip, message)
    puts "echo #{ip}: #{message}"
  end
end
