class Computer
  @@users = {}
  def initialize(username, password)
    @username = username
    @password = password
    @@users[username] = password
    @files = Hash.new
  end
  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} is created at #{@files[filename]} by #{@username}"
  end
  def Computer.get_users
    return @@users
  end
end
my_computer = Computer.new("Bach", "PW")
my_computer.create("help.txt")
puts Computer.get_users