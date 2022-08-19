require "application_system_test_case"

class AdsTest < ApplicationSystemTestCase
  setup do
    @ad = ads(:one)
  end

  test "visiting the index" do
    visit ads_url
    assert_selector "h1", text: "Ads"
  end

  test "should create ad" do
    visit ads_url
    click_on "New ad"

    fill_in "Category", with: @ad.category
    fill_in "City", with: @ad.city
    fill_in "Description", with: @ad.description
    fill_in "Images", with: @ad.images
    fill_in "Price", with: @ad.price
    fill_in "Shipment", with: @ad.shipment
    fill_in "State", with: @ad.state
    fill_in "Title", with: @ad.title
    click_on "Create Ad"

    assert_text "Ad was successfully created"
    click_on "Back"
  end

  test "should update Ad" do
    visit ad_url(@ad)
    click_on "Edit this ad", match: :first

    fill_in "Category", with: @ad.category
    fill_in "City", with: @ad.city
    fill_in "Description", with: @ad.description
    fill_in "Images", with: @ad.images
    fill_in "Price", with: @ad.price
    fill_in "Shipment", with: @ad.shipment
    fill_in "State", with: @ad.state
    fill_in "Title", with: @ad.title
    click_on "Update Ad"

    assert_text "Ad was successfully updated"
    click_on "Back"
  end

  test "should destroy Ad" do
    visit ad_url(@ad)
    click_on "Destroy this ad", match: :first

    assert_text "Ad was successfully destroyed"
  end
end
