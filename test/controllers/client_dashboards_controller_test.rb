require 'test_helper'

class ClientDashboardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client_dashboard = client_dashboards(:one)
  end

  test "should get index" do
    get client_dashboards_url
    assert_response :success
  end

  test "should get new" do
    get new_client_dashboard_url
    assert_response :success
  end

  test "should create client_dashboard" do
    assert_difference('ClientDashboard.count') do
      post client_dashboards_url, params: { client_dashboard: {  } }
    end

    assert_redirected_to client_dashboard_url(ClientDashboard.last)
  end

  test "should show client_dashboard" do
    get client_dashboard_url(@client_dashboard)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_dashboard_url(@client_dashboard)
    assert_response :success
  end

  test "should update client_dashboard" do
    patch client_dashboard_url(@client_dashboard), params: { client_dashboard: {  } }
    assert_redirected_to client_dashboard_url(@client_dashboard)
  end

  test "should destroy client_dashboard" do
    assert_difference('ClientDashboard.count', -1) do
      delete client_dashboard_url(@client_dashboard)
    end

    assert_redirected_to client_dashboards_url
  end
end
