require 'rails_helper'

feature 'Mood Recorder' do
  before do
    Emotion.create(description: 'Foo')
  end
  scenario 'User save an emotion' do
    visit new_mood_path

    expect(page).to have_text('Foo')
    choose  'Foo'
    fill_in 'mood_cause', with: 'something was wrong'
    fill_in 'mood_cessation', with: 'Be present'
    click_on  'Submit'

    expect(page).to have_text('Success')
  end
end