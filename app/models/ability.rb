class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
<<<<<<< HEAD
    if user.admin?
          can :manage, :all
        else
          can :read, :all
          #can :manage, User, id: user.id
       end
=======
    can :manage, User, id: user.id
>>>>>>> authentication
  end

end