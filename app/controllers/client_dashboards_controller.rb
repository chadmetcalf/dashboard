class ClientDashboardsController < ApplicationController
  before_action :set_client_dashboard, only: [:show]

  def show
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_client_dashboard
    @client_dashboard = ClientDashboard.new
  end
end
