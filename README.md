## Prerequisites
- Python 3
- Robot Framework
- Appium
- Change config.robot and adjust it for your device

## Installation

- Install Python, Robot Framework.
- Install Appium and its dependencies. You can install Appium using npm: 
'''
npm install -g appium'
'''
- Install the necessary libraries by running the following command:
'''
pip install -r requirements.txt
'''
- Setup your phone (Connect your phone to the host laptop via USB.)
- Enable Developer Mode and USB Debugging on your phone.

## Running the Tests

- Start the Appium server by running:
''' 
appium --allow-insecure chromedriver_autodownload
'''
- Execute the test script by running:
'''
robot browser_test.robot
'''


## Debugging the Tests

- The test will be executed, and Robot Framework will generate a detailed log and report. 
You can find the detailed results in the output.