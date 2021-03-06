Given(/^I get to the registration form$/) do
  @screens.home_screen.click_no_first
  @screens.home_screen.click_no_second
  @screens.home_screen.click_burger_menu
  @screens.home_screen.click_log_in_button
  @screens.home_screen.click_register_button
end

When(/^I input random user credentials in registration form$/) do
  @fullname = "name#{rand(1..99999)}"
  # # @last_name = "lastname#{rand(1..99999)}"
  email = "hurre#{rand(1..99999)}@email.com"
  @screens.home_screen.set_fullname(@fullname)
  @screens.home_screen.set_email(email)
  @screens.home_screen.set_password("Parole123")
  @screens.home_screen.set_repassword("Parole123")

end


And(/^I submit the registration details$/) do
  @screens.home_screen.click_signup
end