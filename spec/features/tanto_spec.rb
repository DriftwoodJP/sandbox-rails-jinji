require 'rails_helper'

feature 'Standup' do
  scenario "show '担当は慌てて起立しました。' when given a command 'standup'" do
    shain = Tanto.new
    shain.save!

    visit standup_shain_path shain.id

    expect(page).to have_content '担当は慌てて起立しました。'
  end
end

feature 'Salary' do
  scenario "show '給与' in #show" do
    shain = Tanto.new(kihonkyu: 100000)
    shain.save!

    visit shain_path shain.id

    expect(page).to have_content '給与: 100000'
  end
end
