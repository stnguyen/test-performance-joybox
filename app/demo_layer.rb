class DemoLayer < Joybox::Core::Layer
  scene

  def on_enter
    load_assets

    # Create grossinies
    @characters = []
    200.times do
      grossini = CCSprite.spriteWithSpriteFrameName "grossini_dance_01.png"
      self << grossini

      grossini.position = [Random.rand(440) + 40, Random.rand(280) + 40].to_point

      grossini.runAction CCRepeatForever.actionWithAction(CCAnimate.actionWithAnimation(AnimationHelper.animation_from_cache("grossini_dance_0", "dance")))

      @characters << grossini
    end

    scheduleUpdate
  end

  def load_assets
    SpriteFrameCache.frames.add file_name: "grossini-aliases.plist"

    AnimationHelper.load_into_cache "grossini_dance_0",
      1, 9,
      0.06,
      "dance"
  end

  def update(delta)
    RubyMover.move1(@characters, delta)
    #ObjCMover.move @characters, withDelta: delta
  end
end
