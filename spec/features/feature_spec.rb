require 'spec_helper'

describe BorisBikes do
  feature 'setting up DockingStations' do
    scenario 'the hompage has a link to set up a Docking Station' do
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

  feature 'docking bikes to a docking station' do
    scenario 'the docking station has a link to dock a bike' do
      visit '/dockingStations'
      expect(page).to have_link "Dock a bike"
    end

    scenario 'a bike is docked to a docking station' do
      visit '/dockingStations'
      click_link 'Dock a bike'
      fill_in 'bike_name', with: "Unicycle"
      click_button 'Dock Bike'
      expect(page).to have_content "Unicycle"
    end
  end

end
