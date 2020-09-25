class Connection
  def initialize server_ip
    @ip = server_ip
  end

  def send username, message
    puts "send #{@ip}: [#{username}] #{message}"
  end
end
