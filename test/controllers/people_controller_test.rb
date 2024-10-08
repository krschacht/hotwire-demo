require "test_helper"

class PeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get position_people_url(positions(:one))
    assert_response :success
  end

  test "should get new" do
    get new_position_person_url(positions(:one))
    assert_response :success
  end

  test "should create person" do
    assert_difference("Person.count") do
      post people_url, params: { person: { email: @person.email, first_name: @person.first_name, last_name: @person.last_name, note: @person.note, position_id: @person.position_id, stage: @person.stage } }
    end

    assert_redirected_to person_url(Person.last)
  end

  test "should show person" do
    get person_url(@person)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_url(@person)
    assert_response :success
  end

  test "should update person" do
    patch person_url(@person), params: { person: { email: @person.email, first_name: @person.first_name, last_name: @person.last_name, note: @person.note, position_id: @person.position_id, stage: @person.stage } }
    assert_redirected_to person_url(@person)
  end

  test "should destroy person" do
    assert_difference("Person.count", -1) do
      delete person_url(@person)
    end

    assert_redirected_to people_url
  end
end
