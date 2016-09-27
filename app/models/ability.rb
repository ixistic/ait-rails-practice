class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    # elsif user.member?
    #   can :read, Quotation
    #   can :create, Quotation
    #   can :update, Quotation do |quotation|
    #     quotation.try(:user) == user
    #   end
    #   can :destroy, Quotation do |quotation|
    #     quotation.try(:user) == user
    #   end
    # else
    #   can :read, Quotation
    end

  end
end
