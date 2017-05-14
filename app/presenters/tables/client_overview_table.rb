class ClientOverviewTable < ApplicationTable
  include ActiveModel::Model

  def rows
    10.times.map do
      Row.new
    end
  end

  class Row
    ActiveModel::Model

    def elements
      [
        Faker::Name.name,
        rand(15),
        rand(30).days.ago # value object?
      ]
    end
  end
end

