class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    user ||= User.new # guest user (not logged in)

    if user.admin?
      can :manage, :all
    elsif user.nil?
       can :read, :all
    else
      can :manage, :all, :user_id => user.id
    end
  end

end
