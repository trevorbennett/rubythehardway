class Scene
  def enter()
    puts "404: Scene not found"
    exit(1)
  end
end


class Engine

  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    current = @scene_map.opening_scene()
    last_scene = @scene_map.next_scene('finished')

    while current != last_scene
      next_scene = current.enter()
      current = @scene_map.next_scene(next_scene)
    end

    current.enter()
  end
end

class Death < Scene
  @@rood =[
    "git rekt",
    "out. played.",
    "ISHYGDDT",
    "YOU DIED",
    "Good job, very nice player. Your death was my fault, really. I apologize." # never gets called :^)
  ]
  def enter()
    puts @@rood[rand(0..(@@rood.length-2))]
    exit(1)
  end
end

class CentralCorridor < Scene

  def enter()
    puts "You are Allison Huxley, space ship thief and general nogoodnik, and you have finally been captured"
    puts "by the Galian authorities. You are brought aboard there ship, but just as you cross the threshold of"
    puts "the central corridor of the ship, you manage to wiggle your way out of your laser cuffs. The officer"
    puts "escorting you has not yet noticed. What do you do? [attack, sneak, pickpocket]"
    print "> "
    input = $stdin.gets.chomp

    if input == "attack"
      puts "You attack the alien that is three times your size. He quickly seizes you by the neck, "
      puts "and seperates your head and your body."
      return "death"
    elsif input == "sneak"
      puts "you crouch down and attempt to sneak away. This is swiftly met with a rib shattering reverse kick."
      puts "Stryxians have eyes in the back of their heads, as it turns out. Guess you should have paid attention"
      puts "in your Xenobiology class instead of practicing your pickpocketing."
      return "death"
    elsif input == "pickpocket"
      puts "you brush up against the Stryxian, slyly grabbing his? pocket contents in the process"
      puts "to your surprise, he had your keybreaker and your personal occular shield on him!"
      puts "You activate the occular shield just as the officer turns around, and bolt for the nearest open door"
      return "laser_weapon_armory"
    else
      puts "try again, bozo"
      return "central_corridor"
    end
  end
end

class LaserWeaponArmory < Scene

  def enter()
    puts "You step in to the Armory. 'Wow, now this is more like it!' you think to yourself"
    puts "However, you've grown tired of this whole farce with the mission Dr. Shaw sent you on"
    puts "and decide to just kill the captain and hijack the ship. now take the mass driver."
    input = $stdin.gets.chomp

    if input == "mass driver"
      puts "you pop the lock on the mass driver with your keybreaker. The officer appears behind you, "
      puts "and points something at you. *CLICK* goes the weapon now in your hands, only milliseconds"
      puts "before a two foot hole appears in the alien's chest. You sprint out into the main corridor,"
      puts "executing three more officers on the way. The door in front of you is made of one foot of so-"
      puts "*CLICK* -lid... nevermind. You blew stright through the bridge door."
      return "the_bridge"
    else
      puts "try again, bozo"
      return "laser_weapon_armory"
    end
  end
end

class TheBridge < Scene

  def enter()
    puts "you see the bridge, the captain at the head of it. He aims a laser pistol at you"
    puts "only to find out that was a terrible idea. He finds himself ventilated before he"
    puts "can even respond."

    $stdin.gets

    return "finished"
  end
end

class EscapePod < Scene

  def enter()
    puts "You enter the escape pod. A terminal beeps happily as you climb in."
    puts "'Please input destination!' the computer chirps"
  end
end

class Finished < Scene

  def enter()
    puts "You win!"
    exit(0)
  end
end

class Map

  @@scenes = {
  'central_corridor' => CentralCorridor.new(),
  'laser_weapon_armory' => LaserWeaponArmory.new(),
  'the_bridge' => TheBridge.new(),
  'death' => Death.new(),
  'finished' => Finished.new(),
  }
  def initialize( start_scene)
  @open = start_scene
  end

  def next_scene( scene_name)
    @next_scene = @@scenes[scene_name]
  end

  def opening_scene()
    return next_scene(@open)
  end
end


a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
a_game.play()
