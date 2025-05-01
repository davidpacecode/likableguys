class SwimMeetPolicy < ApplicationPolicy
  # NOTE: Up to Pundit v2.3.1, the inheritance was declared as
  # `Scope < Scope` rather than `Scope < ApplicationPolicy::Scope`.
  # In most cases the behavior will be identical, but if updating existing
  # code, beware of possible changes to the ancestors:
  # https://gist.github.com/Burgestrand/4b4bc22f31c8a95c425fc0e30d7ef1f5

  def index?
    true # Everyone can see the index
  end

  def show?
    true # Everyone can see individual posts
  end

  def create?
    user.present? # Only logged in users can create
  end

  def update?
    user.present? && (record.user == user) # Only the creator can update
  end

  def destroy?
    user.present? && (record.user == user) # Only the creator can destroy
  end

  class Scope < ApplicationPolicy::Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end
end
