require "leafgem"

# Create the window our game will sit in!
# window_title, window_width, window_height, pixel_scale
create_window("Leafgem Demo!", 640, 480, 3)

# Define a new "Thing!"
class Player < Leafgem::Object
  @image_index = new_spritesheet("images/tg.png", 32, 32)

  def init
    set_animation([0, 3], 0, 0.05)
  end

  def update
    # Here's some basic movement!
    @x -= keyboard_check("left") ? 1 : 0
    @x += keyboard_check("right") ? 1 : 0
    @y -= keyboard_check("up") ? 1 : 0
    @y += keyboard_check("down") ? 1 : 0
  end

  def draw
    # draw_sprite(path, x, y, alpha)
    draw_sprite("images/Tileset.png", 32, 15, 0.3)
    draw_self
  end
end

# Create the thing in our game world!
create_object(Player, 10, 10)

Leafgem::Game.run
