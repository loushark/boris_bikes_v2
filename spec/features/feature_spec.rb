require 'spec_helper'

describe BorisBikes do
  feature 'setting up DockingStations' do
    scenario 'the hompage has a button to set up a Docking Station' do
      visit '/'
      expect(page).to have_link "Add new Docking Station"
    end

    scenario 'user can set up a new docking station' do
      visit '/'
      click_link 'Add new Docking Station'
      fill_in 'dock_name', with: 'Albert'
      fill_in 'dock_capacity', with: 10
      click_button 'Add Docking Station'
      expect(page).to have_content "Docking Station Albert"
    end
  end
end
