require 'test_helper'

class HistoricoLaboralsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @historico_laboral = historico_laborals(:one)
  end

  test "should get index" do
    get historico_laborals_url
    assert_response :success
  end

  test "should get new" do
    get new_historico_laboral_url
    assert_response :success
  end

  test "should create historico_laboral" do
    assert_difference('HistoricoLaboral.count') do
      post historico_laborals_url, params: { historico_laboral: { anos: @historico_laboral.anos, dias: @historico_laboral.dias, documento_id: @historico_laboral.documento_id, empregador_id: @historico_laboral.empregador_id, meses: @historico_laboral.meses, nome_identificador: @historico_laboral.nome_identificador, pessoa_fisica_id: @historico_laboral.pessoa_fisica_id } }
    end

    assert_redirected_to historico_laboral_url(HistoricoLaboral.last)
  end

  test "should show historico_laboral" do
    get historico_laboral_url(@historico_laboral)
    assert_response :success
  end

  test "should get edit" do
    get edit_historico_laboral_url(@historico_laboral)
    assert_response :success
  end

  test "should update historico_laboral" do
    patch historico_laboral_url(@historico_laboral), params: { historico_laboral: { anos: @historico_laboral.anos, dias: @historico_laboral.dias, documento_id: @historico_laboral.documento_id, empregador_id: @historico_laboral.empregador_id, meses: @historico_laboral.meses, nome_identificador: @historico_laboral.nome_identificador, pessoa_fisica_id: @historico_laboral.pessoa_fisica_id } }
    assert_redirected_to historico_laboral_url(@historico_laboral)
  end

  test "should destroy historico_laboral" do
    assert_difference('HistoricoLaboral.count', -1) do
      delete historico_laboral_url(@historico_laboral)
    end

    assert_redirected_to historico_laborals_url
  end
end
