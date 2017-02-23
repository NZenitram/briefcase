require 'rails_helper'

describe 'as a user', js:true do
  context 'when I have already created a portfolio' do
    it 'I can see alumni card on the root page' do
      user = new_user
      user.create_portfolio(linkedin_url: "linkedin.com", full_name: "Anthony Ciccone", github_url: "github.com", email: "test@test.com", title: "software developer", bio: "about my project here")

      visit alumni_index_path

      expect(page).to have_content("Anthony Ciccone")
      expect(page).to have_content("software developer")
      expect(page).to have_content("about my project here")
    end
  end
end
