class DocumentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  # def index?
  #   true
  # end

  def new?
    true
  end

  def create?
    true
  end

  def destroy?
    record.user == user || record.lawyers.first.user == user
  end
end
