class ApartmentPolicy
  attr_reader :user, :apartment 

  def initialize(user, apartment)
    @user = user
    @apartment = apartment
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    @current_user 
  end

  def new?
    @current_user
  end

  def update?
    @current_user == apartment.user_id
  end

  def edit?
    update?
  end

  def destroy?
    update?
  end
end