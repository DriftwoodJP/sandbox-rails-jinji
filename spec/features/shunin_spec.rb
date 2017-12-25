require 'rails_helper'

feature 'Standup' do
  scenario "show '主任は慌てて起立しました。' when given a command 'standup'" do
    shain = Shunin.new
    shain.save!

    visit standup_shain_path shain.id

    expect(page).to have_content '主任は慌てて起立しました。'
  end
end

feature 'Salary' do
  scenario "show '給与' in #show" do
    shain = Shunin.new(kihonkyu: 100000)
    shain.save!

    visit shain_path shain.id

    expect(page).to have_content '給与: 201000'
  end
end
