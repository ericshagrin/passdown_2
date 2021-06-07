class ApartmentPolicy
  attr_reader :user, :apartment 

  def initialize(user, apartment)
    @user = user
    @apartment = apartment
  end

  def create?
    new? 
  end

  def new?
    user
  end

  def update?
    user.id == apartment.user_id
  end

  def edit?
    update?
  end

  def destroy?
    update?
  end
end