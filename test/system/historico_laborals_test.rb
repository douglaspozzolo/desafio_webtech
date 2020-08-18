require "application_system_test_case"

class HistoricoLaboralsTest < ApplicationSystemTestCase
  setup do
    @historico_laboral = historico_laborals(:one)
  end

  test "visiting the index" do
    visit historico_laborals_url
    assert_selector "h1", text: "Historico Laborals"
  end

  test "creating a Historico laboral" do
    visit historico_laborals_url
    click_on "New Historico Laboral"

    fill_in "Anos", with: @historico_laboral.anos
    fill_in "Dias", with: @historico_laboral.dias
    fill_in "Documento", with: @historico_laboral.documento_id
    fill_in "Empregador", with: @historico_laboral.empregador_id
    fill_in "Meses", with: @historico_laboral.meses
    fill_in "Nome identificador", with: @historico_laboral.nome_identificador
    fill_in "Pessoa fisica", with: @historico_laboral.pessoa_fisica_id
    click_on "Create Historico laboral"

    assert_text "Historico laboral was successfully created"
    click_on "Back"
  end

  test "updating a Historico laboral" do
    visit historico_laborals_url
    click_on "Edit", match: :first

    fill_in "Anos", with: @historico_laboral.anos
    fill_in "Dias", with: @historico_laboral.dias
    fill_in "Documento", with: @historico_laboral.documento_id
    fill_in "Empregador", with: @historico_laboral.empregador_id
    fill_in "Meses", with: @historico_laboral.meses
    fill_in "Nome identificador", with: @historico_laboral.nome_identificador
    fill_in "Pessoa fisica", with: @historico_laboral.pessoa_fisica_id
    click_on "Update Historico laboral"

    assert_text "Historico laboral was successfully updated"
    click_on "Back"
  end

  test "destroying a Historico laboral" do
    visit historico_laborals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Historico laboral was successfully destroyed"
  end
end
