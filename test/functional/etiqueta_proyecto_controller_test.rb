require 'test_helper'

class EtiquetaProyectoControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get borrar" do
    get :borrar
    assert_response :success
  end

end
