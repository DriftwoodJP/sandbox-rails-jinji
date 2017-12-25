require 'rails_helper'

feature 'Standup' do
  scenario "show '部長は起立しました。' when given a command 'standup'" do
    shain = Bucho.new
    shain.save!

    visit standup_shain_path shain.id

    expect(page).to have_content '部長は起立しました。'
  end
end

feature 'Salary' do
  scenario "show '給与' in #show" do
    shain = Bucho.new(kihonkyu: 100000)
    shain.save!

    visit shain_path shain.id

    expect(page).to have_content '給与: 300000'
  end
end
