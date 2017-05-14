class ClientDashboard < ApplicationPresenter # :nodoc:
  include ActiveModel::Model

  def overview_cards
    [
      VitalThingCard.new(metric: rand(235)),
      ActiveSupportIssueCard.new(metric: rand(12)),
      ImportantInformationCard.new(metric: rand(43)),
      InformativeChart.new(data: chart_data)
    ]
  end

  def overview_table
    ClientOverviewTable.new
  end


  def chart_data
    [
      {
        quantity: 13,
        percentage: 13,
        name: 'Blocked',
        id: 1
      },
      {
        quantity: 137,
        percentage: 37,
        name: 'Active',
        id: 2
      },
      {
        quantity: 31,
        percentage: 31,
        name: 'Open',
        id: 3
      },
      {
        quantity: 19,
        percentage: 19,
        name: 'Closed',
        id: 4
      }
    ]
  end
end
