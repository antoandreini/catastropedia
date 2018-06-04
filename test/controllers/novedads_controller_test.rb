require 'test_helper'

class NovedadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @novedad = novedads(:one)
  end

  test "should get index" do
    get novedads_url
    assert_response :success
  end

  test "should get new" do
    get new_novedad_url
    assert_response :success
  end

  test "should create novedad" do
    assert_difference('Novedad.count') do
      post novedads_url, params: { novedad: { altimg: @novedad.altimg, contenido: @novedad.contenido, copete: @novedad.copete, fecha: @novedad.fecha, imagen: @novedad.imagen, titulo: @novedad.titulo } }
    end

    assert_redirected_to novedad_url(Novedad.last)
  end

  test "should show novedad" do
    get novedad_url(@novedad)
    assert_response :success
  end

  test "should get edit" do
    get edit_novedad_url(@novedad)
    assert_response :success
  end

  test "should update novedad" do
    patch novedad_url(@novedad), params: { novedad: { altimg: @novedad.altimg, contenido: @novedad.contenido, copete: @novedad.copete, fecha: @novedad.fecha, imagen: @novedad.imagen, titulo: @novedad.titulo } }
    assert_redirected_to novedad_url(@novedad)
  end

  test "should destroy novedad" do
    assert_difference('Novedad.count', -1) do
      delete novedad_url(@novedad)
    end

    assert_redirected_to novedads_url
  end
end
