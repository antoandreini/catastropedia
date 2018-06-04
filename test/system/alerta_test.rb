require "application_system_test_case"

class AlertaTest < ApplicationSystemTestCase
  setup do
    @alertum = alerta(:one)
  end

  test "visiting the index" do
    visit alerta_url
    assert_selector "h1", text: "Alerta"
  end

  test "creating a Alertum" do
    visit alerta_url
    click_on "New Alertum"

    fill_in "Descripcion", with: @alertum.descripcion
    fill_in "Fecha", with: @alertum.fecha
    fill_in "Titulo", with: @alertum.titulo
    fill_in "Zonas", with: @alertum.zonas
    click_on "Create Alertum"

    assert_text "Alertum was successfully created"
    click_on "Back"
  end

  test "updating a Alertum" do
    visit alerta_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @alertum.descripcion
    fill_in "Fecha", with: @alertum.fecha
    fill_in "Titulo", with: @alertum.titulo
    fill_in "Zonas", with: @alertum.zonas
    click_on "Update Alertum"

    assert_text "Alertum was successfully updated"
    click_on "Back"
  end

  test "destroying a Alertum" do
    visit alerta_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alertum was successfully destroyed"
  end
end
