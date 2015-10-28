class Ability
  include CanCan::Ability

  def initialize(user)
    if user.nil?
      guest_ability
    elsif user.admin?
      admin_ability
    else
      user_ability(user)
    end
  end

  def admin_ability
    can :manage, :all
  end

  def user_ability(user)
    can :read, :all
    can :create, Product
    can [:update, :destroy], Product do |product|
      product.created_by?(user)
    end
  end

  def guest_ability
  end
end
