class CasePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.is_lawyer?
        scope.where(lawyer_id: user.lawyer.id)
      else
        scope.where(user_id: user.id)
      end
    end
  end

  def update?
    record.user == user
    user.is_lawyer?
  end

  def show?
    record.user == user || record.lawyer.user == user
    user.is_lawyer?
  end

  def create?
    user.is_lawyer?
  end

  # def global_search?
  #   true
  # end
end
