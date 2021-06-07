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
    if user
      user.id == apartment.user_id
    else 
      false
    end 
  end

  def edit?
    update?
  end

  def destroy?
    update?
  end
end