require "application_system_test_case"

class EmpregadorsTest < ApplicationSystemTestCase
  setup do
    @empregador = empregadors(:one)
  end

  test "visiting the index" do
    visit empregadors_url
    assert_selector "h1", text: "Empregadors"
  end

  test "creating a Empregador" do
    visit empregadors_url
    click_on "New Empregador"

    fill_in "Cnpj", with: @empregador.cnpj
    fill_in "Nome", with: @empregador.nome
    click_on "Create Empregador"

    assert_text "Empregador was successfully created"
    click_on "Back"
  end

  test "updating a Empregador" do
    visit empregadors_url
    click_on "Edit", match: :first

    fill_in "Cnpj", with: @empregador.cnpj
    fill_in "Nome", with: @empregador.nome
    click_on "Update Empregador"

    assert_text "Empregador was successfully updated"
    click_on "Back"
  end

  test "destroying a Empregador" do
    visit empregadors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Empregador was successfully destroyed"
  end
end
