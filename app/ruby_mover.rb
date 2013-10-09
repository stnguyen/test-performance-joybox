class RubyMover
  def self.move1(characters, delta)
    characters.each do |character|
      position = character.position
      position = CGPointMake(position.x + (Random.rand(40) - 20)*delta,
                             position.y + (Random.rand(40) - 20)*delta)
      character.setPosition position
    end
  end

  def self.move2(characters, delta)
    characters.each do |character|
      position = character.position
      position = CGPointMake(position.x + (Random.rand(40) - 20)*delta,
                             position.y + (Random.rand(40) - 20)*delta)
      character.position = position
    end
  end
end
