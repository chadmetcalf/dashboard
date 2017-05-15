module V1
  class ChartsController < ApplicationController
    before_action :set_chart, only: [:show]

    def show
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_chart
      @chart = InformativeChart.new
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def v1_chart_params
      params.fetch(:chart, {})
    end
  end
end
