import os
import sys
import time
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from robot.libraries.BuiltIn import BuiltIn
from selenium import webdriver
from robot.run import RobotFramework
from selenium import webdriver
from selenium.webdriver.common.action_chains import ActionChains
import signal

class SmokeKeywords:

    def __init__(self):
        pass

    @staticmethod
    def current():
        seleniumlib = BuiltIn().get_library_instance('SeleniumLibrary')
        current_driver = seleniumlib.driver
        return current_driver

    @staticmethod
    def hello_world():
        print("hello")

    @staticmethod
    def tab_image_visibility_control():
        driver = SmokeKeywords.current()
        time.sleep(2)
        tabs = driver.find_elements_by_css_selector('#navigation-wrapper > nav > ul>li')
        for k in range (0,len(tabs)):
            time.sleep(2)
            hover = ActionChains(driver).move_to_element(tabs[k])
            hover.perform()
            find3= tabs[k].find_elements_by_xpath('.//img')
            lenfind3 = len(find3)
            print("There should be "+str(lenfind3)+" images in "+str(k+1)+" th tab")
            for z in range (0,len(find3)):
                if find3[z].is_displayed():
                    print("Image is visible")
                else:
                    print("Image is not visible")
    @staticmethod
    def Scroll_Down_Please():
        driver = SmokeKeywords.current()
        driver.execute_script("window.scrollTo(0, 5000)")
        time.sleep(10)

    @staticmethod
    def refresh():
        driver = SmokeKeywords.current()

        time.sleep(3)
        #driver.find_element_by_css_selector('#navigation-wrapper > nav > ul > li:nth-child(2) > a').click()
        btns= driver.find_elements_by_css_selector("#navigation-wrapper > nav > ul > li > a")
        for k in range(0, len(btns)):
            time.sleep(2)
            btns(k).click()
            time.sleep(2)












