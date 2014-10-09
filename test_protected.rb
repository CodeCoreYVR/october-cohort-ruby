class Cookie

  protected

  def me_protected
    puts "Haha I'm protected"
  end

  private

  def me_private
    puts "Haha I'm private"
  end
end

class Oreo < Cookie

  def show_me
    me_private
    me_protected
  end

  def show_me_again
    a = Cookie.new
    a.me_protected
    a.me_private
  end

end

oreo = Oreo.new

oreo.show_me
oreo.show_me_again


