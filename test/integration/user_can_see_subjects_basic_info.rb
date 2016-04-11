require 'test_helper'

class UserCanSeeSubjectsBasicInfo < ActionDispatch::IntegrationTest
  #user can see the subjects basic information 
  #user can click links to tweets, replies, and media
  #user can choose to follow subject
  #user can tweet the subject

  #===================Navigation========================
  page.visit '/homepage'
  page.current_path 

  # ==================Clicking links/buttons============
  body = ""
  page.visit '/homepage'

  #click link by id
  page.click_on 'tweets'
  page.current_path
end 
