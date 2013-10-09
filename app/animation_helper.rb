class AnimationHelper
  def self.load_into_cache(prefix, from_n, to_n, delay_per_frame, anim_name)
    # puts "Loading anim #{full_animation_name prefix, anim_name} #{[from_n, to_n]}"
    anim = Joybox::Animations::Animation.new

    (from_n..to_n).to_a.each do |i|
      file_name = "#{prefix}#{i}.png"
      anim.add_frame(frame: CCSpriteFrameCache.sharedSpriteFrameCache.spriteFrameByName(file_name))
    end

    anim.delayPerUnit = delay_per_frame
    CCAnimationCache.sharedAnimationCache.addAnimation(anim, name: full_animation_name(prefix, anim_name))

    # return animation for chaining
    anim
  end

  def self.animation_from_cache(*name_components)
    name = name_components.join ' '
    # puts "Getting animation '#{name}' from cache"
    CCAnimationCache.sharedAnimationCache.animationByName name
  end

  def self.full_animation_name(prefix, name)
    "#{prefix} #{name}" 
  end
end
