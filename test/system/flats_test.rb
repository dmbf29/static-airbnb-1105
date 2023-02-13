require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit '/'

    assert_selector "h1", text: "Flats"
  end

  test "visiting the show" do
    visit '/flats/148'

    assert_selector "h1", text: "Trendy Apt in Buttes Montmartre"
  end
end
