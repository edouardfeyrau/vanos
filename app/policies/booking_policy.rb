class BookingPolicy < ApplicationPolicy

  def new?
    create?
  end

  def create?
    true
  end

  def index?
    true
  end

  def show?
    true
  end

  def update?
    record.user == user
  end

  def destroy?
    true
  end

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end
end
