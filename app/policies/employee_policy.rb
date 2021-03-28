  class EmployeePolicy < ApplicationPolicy
    class Scope < Scope
      def resolve
        scope.all
      end
    end

    def show?
      scope.all
    end

    def create?
      @user.admin?
    end

    def update?
      user.admin?
    end

    def destroy?
      update?
    end
end
