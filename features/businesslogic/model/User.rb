class User

  attr_accessor :name

  def self.get_user_name
    user = User.new
    user.name = "Shane Connolly"
  end



end