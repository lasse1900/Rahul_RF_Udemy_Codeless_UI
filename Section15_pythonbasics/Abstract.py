
from abc import ABC, abstractmethod


class WebDriver(ABC):

    @abstractmethod
    def click(self):
        pass


class Chromedriver(WebDriver):

    def capturingScreenshot(self):
        print("Capturing screenshot")

    def click(self):
        print("Clicking in chrome")

class FirefoxDriver(WebDriver):

    def capturingScreenshot(self):
        print("Capturing screenshot")

    def click(self):
        print("Clicking in firefox")


obj = Chromedriver()
obj.capturingScreenshot()
obj.click()

obj1 = FirefoxDriver()
obj1.click()