require 'test_helper'

class AlertaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alertum = alerta(:one)
  end

  test "should get index" do
    get alerta_url
    assert_response :success
  end

  test "should get new" do
    get new_alertum_url
    assert_response :success
  end

  test "should create alertum" do
    assert_difference('Alertum.count') do
      post alerta_url, params: { alertum: { descripcion: @alertum.descripcion, fecha: @alertum.fecha, titulo: @alertum.titulo, zonas: @alertum.zonas } }
    end

    assert_redirected_to alertum_url(Alertum.last)
  end

  test "should show alertum" do
    get alertum_url(@alertum)
    assert_response :success
  end

  test "should get edit" do
    get edit_alertum_url(@alertum)
    assert_response :success
  end

  test "should update alertum" do
    patch alertum_url(@alertum), params: { alertum: { descripcion: @alertum.descripcion, fecha: @alertum.fecha, titulo: @alertum.titulo, zonas: @alertum.zonas } }
    assert_redirected_to alertum_url(@alertum)
  end

  test "should destroy alertum" do
    assert_difference('Alertum.count', -1) do
      delete alertum_url(@alertum)
    end

    assert_redirected_to alerta_url
  end
end
