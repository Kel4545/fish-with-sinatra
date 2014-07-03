require "spec_helper"

feature "Homepage" do
  scenario "should have a greeting" do
    pending
    visit "/"

    expect(page).to have_content("Fish Homepage")

    expect(page).to have_content("Leopard Shark Puffer Fish Snake Head")

    click_link("Snake Head")


    expect(page).to have_content("Here from Asia to fuck you up")

    # click_link "Homepage"
    #
    # expect(page).to have_content("Welcome")
    #
    # expect(page).to have_css("img[src='http://www.zooborns.com/.a/6a010535647bf3970b015433fc97e2970c-500wi']")
  end

  scenario "user can add new fish and see it on homepage" do
    visit "/"

    fill_in "new_fish", :with => "Trout"
    click_on "Add"
    expect(page).to have_content("Trout")
  end
end