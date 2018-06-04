require "application_system_test_case"

class NovedadsTest < ApplicationSystemTestCase
  setup do
    @novedad = novedads(:one)
  end

  test "visiting the index" do
    visit novedads_url
    assert_selector "h1", text: "Novedads"
  end

  test "creating a Novedad" do
    visit novedads_url
    click_on "New Novedad"

    fill_in "Altimg", with: @novedad.altimg
    fill_in "Contenido", with: @novedad.contenido
    fill_in "Copete", with: @novedad.copete
    fill_in "Fecha", with: @novedad.fecha
    fill_in "Imagen", with: @novedad.imagen
    fill_in "Titulo", with: @novedad.titulo
    click_on "Create Novedad"

    assert_text "Novedad was successfully created"
    click_on "Back"
  end

  test "updating a Novedad" do
    visit novedads_url
    click_on "Edit", match: :first

    fill_in "Altimg", with: @novedad.altimg
    fill_in "Contenido", with: @novedad.contenido
    fill_in "Copete", with: @novedad.copete
    fill_in "Fecha", with: @novedad.fecha
    fill_in "Imagen", with: @novedad.imagen
    fill_in "Titulo", with: @novedad.titulo
    click_on "Update Novedad"

    assert_text "Novedad was successfully updated"
    click_on "Back"
  end

  test "destroying a Novedad" do
    visit novedads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Novedad was successfully destroyed"
  end
end
