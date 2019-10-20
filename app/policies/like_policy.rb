class LikePolicy < ApplicationPolicy
  def index?
    true
  end

  def create?
    user.present?
  end

  def show?
    true
  end

  def update?
    user.present?
  end

  def destroy?
    user.present?
  end
end
