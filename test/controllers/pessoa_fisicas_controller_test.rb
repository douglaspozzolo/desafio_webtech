require 'test_helper'

class PessoaFisicasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pessoa_fisica = pessoa_fisicas(:one)
  end

  test "should get index" do
    get pessoa_fisicas_url
    assert_response :success
  end

  test "should get new" do
    get new_pessoa_fisica_url
    assert_response :success
  end

  test "should create pessoa_fisica" do
    assert_difference('PessoaFisica.count') do
      post pessoa_fisicas_url, params: { pessoa_fisica: { cpf: @pessoa_fisica.cpf, nit: @pessoa_fisica.nit, nome: @pessoa_fisica.nome, nome_da_mae: @pessoa_fisica.nome_da_mae } }
    end

    assert_redirected_to pessoa_fisica_url(PessoaFisica.last)
  end

  test "should show pessoa_fisica" do
    get pessoa_fisica_url(@pessoa_fisica)
    assert_response :success
  end

  test "should get edit" do
    get edit_pessoa_fisica_url(@pessoa_fisica)
    assert_response :success
  end

  test "should update pessoa_fisica" do
    patch pessoa_fisica_url(@pessoa_fisica), params: { pessoa_fisica: { cpf: @pessoa_fisica.cpf, nit: @pessoa_fisica.nit, nome: @pessoa_fisica.nome, nome_da_mae: @pessoa_fisica.nome_da_mae } }
    assert_redirected_to pessoa_fisica_url(@pessoa_fisica)
  end

  test "should destroy pessoa_fisica" do
    assert_difference('PessoaFisica.count', -1) do
      delete pessoa_fisica_url(@pessoa_fisica)
    end

    assert_redirected_to pessoa_fisicas_url
  end
end
