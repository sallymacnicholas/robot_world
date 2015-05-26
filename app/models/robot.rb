class Robot

  attr_reader :name,
              :id,
              :date_hired,
              :avatar,
              :birthdate,
              :state,
              :city,
              :department

  def initialize(data)
    @id         = data[:id]
    @name       = data[:name] ||= Faker::Name.name
    @city       = data[:city] ||= Faker::Address.city
    @state      = data[:state] ||= Faker::Address.state
    @avatar     = data[:avatar] ||= Faker::Avatar.image("bob_bot", "50x50")
    @birthdate  = data[:birthdate] ||= Faker::Date.birthday(1,1000)
    @date_hired = data[:date_hired] ||= Faker::Date.backward(1000)
    @department = data[:department] ||= Faker::Lorem.word
  end
end
