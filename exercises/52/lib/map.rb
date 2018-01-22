require 'sinatra'
enable :sessions
module Map

  class Room

    def initialize(name, description)
      @name = name
      @description = description
      @paths = {}
    end

    # these make it easy for you to access the variables
    attr_reader :name
    attr_reader :paths
    attr_reader :description

    def go(direction)
      return @paths[direction]
    end

    def add_paths(paths)
      @paths.update(paths)
    end

  end

  CENTRAL_CORRIDOR = Room.new("Central Corridor", "Central Corridor")


  LASER_WEAPON_ARMORY = Room.new("Laser Weapon Armory", "Laser Weapon Armory")



  THE_BRIDGE = Room.new("The Bridge", "The Bridge")


  ESCAPE_POD = Room.new("Escape Pod", "Escape Pod")

  THE_END_WINNER = Room.new("The End", "The End")


  THE_END_LOSER = Room.new("The End", "The End Loser")

  ESCAPE_POD.add_paths({
          '2' => THE_END_WINNER,
          '*' => THE_END_LOSER
      })

  GENERIC_DEATH = Room.new("death", "You died.")

  THE_BRIDGE.add_paths({
      'throw the bomb' => GENERIC_DEATH,
      'slowly place the bomb' => ESCAPE_POD
  })

  LASER_WEAPON_ARMORY.add_paths({
      '0132' => THE_BRIDGE,
      '*' => GENERIC_DEATH
  })

  CENTRAL_CORRIDOR.add_paths({
      'shoot!' => GENERIC_DEATH,
      'dodge!' => GENERIC_DEATH,
      'tell a joke' => LASER_WEAPON_ARMORY
  })

  START = CENTRAL_CORRIDOR

  # A whitelist of allowed room names. We use this so that
  # bad people on the internet can't access random variables
  # with names.  You can use Test::constants and Kernel.const_get
  # too.
  ROOM_NAMES = {
      'CENTRAL_CORRIDOR' => CENTRAL_CORRIDOR,
      'LASER_WEAPON_ARMORY' => LASER_WEAPON_ARMORY,
      'THE_BRIDGE' => THE_BRIDGE,
      'ESCAPE_POD' => ESCAPE_POD,
      'THE_END_WINNER' => THE_END_WINNER,
      'THE_END_LOSER' => THE_END_LOSER,
      'START' => START,
  }

  def Map::load_room(session)
      # Given a session this will return the right room or nil
      return ROOM_NAMES[session[:room]]
  end

  def Map::save_room(session, room)
      # Store the room in the session for later, using its name
      session[:room] = ROOM_NAMES.key(room)
  end
end
