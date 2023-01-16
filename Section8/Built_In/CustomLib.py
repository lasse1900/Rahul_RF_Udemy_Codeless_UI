from robot.libraries.BuiltIn import BuiltIn
import random

seleniumLib = BuiltIn().get_library_instance('SeleniumLibrary')


def print_to_logfile():
    print("Hello printed to logfile")


def print_title():
    title = seleniumLib.get_title()
    print("The title of the page is: ", title)


def select_month(xpath, month, date):

    while(seleniumLib.find_element(xpath).text != month):
        seleniumLib.find_element(
            '//*[@id="ui-datepicker-div"]/div/a[1]/span').click()
    dateStr = f"//a[text() = {date}]"
    seleniumLib.find_element(dateStr).click()
