require 'spec_helper'

describe BorisBikes do
  feature 'setting up DockingStations' do
      scenario 'the hompage has a button to set up a Docking Station' do
    visit '/'
    expect(page).to have_button "Add new Docking Station"
  end
end
end
