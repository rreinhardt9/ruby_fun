class Robot
  attr_reader :name

  def initialize(name:)
    @name = name

    say "Hello I am #{@name}"
  end

  def say_hello_to(other_robot)
    say "Hello #{other_robot.name}"

    other_robot.greeted_by(self)
  end

  def greeted_by(from_robot)
    say_back "Hello #{from_robot.name}"
  end

  def say(words)

    puts <<-ROBOT
      ____
     /  __\\
     \\( oo
     _\\_o/  #{words}
    / \\|/ \\
   / / __\\ \\___
   \\ \\|   |__/_)
    \\/_)  |
     ||___|
     | | |
     | | |
     |_|_|
     [__)_)
    ROBOT

    system("say '#{words}'")
  end

  def say_back(words)
    puts <<-ROBOT
    #{words}
                   ____
                  (___ \\
                   oo~)/
                  _\\-_/_
                 / \\|/  \\
                / / .- \\ \\
                \\ \\ .  /_/
                 \\/___(_/
                  | |  |
                  | |  |
                  |_|__|
                 (_(___]
    ROBOT

    system("say '#{words}'")
  end
end
