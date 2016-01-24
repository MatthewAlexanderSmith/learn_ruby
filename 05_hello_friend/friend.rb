class Friend
  def initialize
    @friend
  end

  def greet(*friend)
    num_args = friend.size
    if num_args > 0
    "Hello #{friend[0]}!"
    else
    "Hello !"
    end
  end
end
