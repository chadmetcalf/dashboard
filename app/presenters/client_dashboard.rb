class ClientDashboard < ApplicationPresenter # :nodoc:
  include ActiveModel::Model

  def overview_cards
    [
      VitalThingCard.new(metric: rand(235)),
      ActiveSupportIssueCard.new(metric: rand(12)),
      ImportantInformationCard.new(metric: rand(43)),
      InformativeChart.new
    ]
  end

  def overview_table
    ClientOverviewTable.new
  end
end
