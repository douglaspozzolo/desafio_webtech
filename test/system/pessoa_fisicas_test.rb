require "application_system_test_case"

class PessoaFisicasTest < ApplicationSystemTestCase
  setup do
    @pessoa_fisica = pessoa_fisicas(:one)
  end

  test "visiting the index" do
    visit pessoa_fisicas_url
    assert_selector "h1", text: "Pessoa Fisicas"
  end

  test "creating a Pessoa fisica" do
    visit pessoa_fisicas_url
    click_on "New Pessoa Fisica"

    fill_in "Cpf", with: @pessoa_fisica.cpf
    fill_in "Nit", with: @pessoa_fisica.nit
    fill_in "Nome", with: @pessoa_fisica.nome
    fill_in "Nome da mae", with: @pessoa_fisica.nome_da_mae
    click_on "Create Pessoa fisica"

    assert_text "Pessoa fisica was successfully created"
    click_on "Back"
  end

  test "updating a Pessoa fisica" do
    visit pessoa_fisicas_url
    click_on "Edit", match: :first

    fill_in "Cpf", with: @pessoa_fisica.cpf
    fill_in "Nit", with: @pessoa_fisica.nit
    fill_in "Nome", with: @pessoa_fisica.nome
    fill_in "Nome da mae", with: @pessoa_fisica.nome_da_mae
    click_on "Update Pessoa fisica"

    assert_text "Pessoa fisica was successfully updated"
    click_on "Back"
  end

  test "destroying a Pessoa fisica" do
    visit pessoa_fisicas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pessoa fisica was successfully destroyed"
  end
end
