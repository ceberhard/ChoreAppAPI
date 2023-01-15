import random
import string
from selenium import webdriver
from selenium.webdriver.common.by import By

def main():
    driver = webdriver.Chrome()

    driver.get('http://localhost:3000/')
    
    # Click Add Chore Link
    addChoreLink = driver.find_element(by=By.ID, value='lnkAddChore')
    addChoreLink.click()

    # Assert Header Label Text
    hdrAddCore = driver.find_element(by=By.TAG_NAME, value='h2')
    assert hdrAddCore.text == 'Add New Chore'
    
    # Find Chore Title TextBox
    txtTitle = driver.find_element(by=By.ID, value='Title')
    
    # Enter a random string
    r = ''.join(random.choice(string.digits) for i in range(10))
    choreTitle = f'Chore Title {r}'
    print(f'Use Chore Title: {choreTitle}')
    txtTitle.value = choreTitle 

    driver.quit()

    print('Add Chore Test Complete')


if __name__ == '__main__':
    main()
