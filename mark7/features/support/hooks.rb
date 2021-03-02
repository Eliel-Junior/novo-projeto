After('@logout') do

# driver.action.move_to(driver.find_element('div#nav-tools a[href="https://www.amazon.com.br/gp/css/homepage.html?ref_=nav_youraccount_btn"]')).perform

# page.find('div#nav-tools a[href="https://www.amazon.com.br/gp/css/homepage.html?ref_=nav_youraccount_btn"]').trigger(:mouseover)
# find('a#navr--hamburgemenu').click
# find('#hmenu-content li a.hmenu-item', text: 'Sair').click
# driver.action.move_to(driver.find_element('a[href="/YourAccount"')).perform
find('div[class="account-dropdown-button"] span').click
find('a[href="/SignOut?lnkctr=mL"]').click
sleep 3
end