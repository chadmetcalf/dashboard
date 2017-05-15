class InformativeChart < ApplicationCard
  # attr_accessor :data

  def data
    [
      {
        quantity: 130,
        percentage: 13,
        name: 'Blocked',
        id: 1
      },
      {
        quantity: 370,
        percentage: 37,
        name: 'Active',
        id: 2
      },
      {
        quantity: 310,
        percentage: 31,
        name: 'Open',
        id: 3
      },
      {
        quantity: 190,
        percentage: 19,
        name: 'Closed',
        id: 4
      }
    ]
  end
end
