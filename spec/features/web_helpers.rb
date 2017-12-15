def add_new_link_with_tag
  visit '/links/new'
  fill_in :title, with: 'Youtube'
  fill_in :url, with: 'https://youtube.com'
  fill_in :tag, with: 'Entertainment'
  # click_on 'Add Bookmark'
end

def add_link_with_sports_tag
  visit '/links/new'
  fill_in :title, with: 'BBC'
  fill_in :url, with: 'http://www.bbc.co.uk/sport'
  fill_in :tag, with: 'Sport'
  # click_on 'Add Bookmark'
end

def add_sky_sports
  visit '/links/new'
  fill_in :title, with: 'Sky'
  fill_in :url, with: 'http://www.sky.co.uk/sport'
  fill_in :tag, with: 'Sport'
  click_on "Add Bookmark"
end

def sign_up
  visit '/users/new'
  expect(page.status_code).to eq(200)
  fill_in :email,    with: 'alice@example.com'
  fill_in :password, with: 'oranges!'
  click_button 'Sign up'
end
