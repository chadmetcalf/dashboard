class ClientDashboardsController < ApplicationController
  before_action :set_client_dashboard, only: [:show, :edit, :update, :destroy]

  # GET /client_dashboards
  # GET /client_dashboards.json
  def index
    @client_dashboards = ClientDashboard.all
  end

  # GET /client_dashboards/1
  # GET /client_dashboards/1.json
  def show
  end

  # GET /client_dashboards/new
  def new
    @client_dashboard = ClientDashboard.new
  end

  # GET /client_dashboards/1/edit
  def edit
  end

  # POST /client_dashboards
  # POST /client_dashboards.json
  def create
    @client_dashboard = ClientDashboard.new(client_dashboard_params)

    respond_to do |format|
      if @client_dashboard.save
        format.html { redirect_to @client_dashboard, notice: 'Client dashboard was successfully created.' }
        format.json { render :show, status: :created, location: @client_dashboard }
      else
        format.html { render :new }
        format.json { render json: @client_dashboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /client_dashboards/1
  # PATCH/PUT /client_dashboards/1.json
  def update
    respond_to do |format|
      if @client_dashboard.update(client_dashboard_params)
        format.html { redirect_to @client_dashboard, notice: 'Client dashboard was successfully updated.' }
        format.json { render :show, status: :ok, location: @client_dashboard }
      else
        format.html { render :edit }
        format.json { render json: @client_dashboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_dashboards/1
  # DELETE /client_dashboards/1.json
  def destroy
    @client_dashboard.destroy
    respond_to do |format|
      format.html { redirect_to client_dashboards_url, notice: 'Client dashboard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_dashboard
      @client_dashboard = ClientDashboard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_dashboard_params
      params.fetch(:client_dashboard, {})
    end
end
