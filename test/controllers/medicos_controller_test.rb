require 'test_helper'

class MedicosControllerTest < ActionController::TestCase
  setup do
    @medico = medicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medico" do
    assert_difference('Medico.count') do
      post :create, medico: { apellidos: @medico.apellidos, celular: @medico.celular, curriculum: @medico.curriculum, email: @medico.email, especialidad_id: @medico.especialidad_id, especialidad_id: @medico.especialidad_id, imagen: @medico.imagen, nombres: @medico.nombres, reconocimiento: @medico.reconocimiento }
    end

    assert_redirected_to medico_path(assigns(:medico))
  end

  test "should show medico" do
    get :show, id: @medico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medico
    assert_response :success
  end

  test "should update medico" do
    patch :update, id: @medico, medico: { apellidos: @medico.apellidos, celular: @medico.celular, curriculum: @medico.curriculum, email: @medico.email, especialidad_id: @medico.especialidad_id, especialidad_id: @medico.especialidad_id, imagen: @medico.imagen, nombres: @medico.nombres, reconocimiento: @medico.reconocimiento }
    assert_redirected_to medico_path(assigns(:medico))
  end

  test "should destroy medico" do
    assert_difference('Medico.count', -1) do
      delete :destroy, id: @medico
    end

    assert_redirected_to medicos_path
  end
end
