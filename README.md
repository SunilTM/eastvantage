# Test Automation Using Robot Framework

## Robot Framework

Robot Framework is an open source test automation framework for acceptance testing and acceptance test-driven development. 
It follows different test case styles – keyword-driven, behaviour-driven and data-driven for writing test cases. 
This feature makes it very easy to understand.

## Pre-requisites:

- Install python https://www.python.org/downloads/
- Set Environment Variable in windows :
- Add python to PYTHONHOME and PYTHONPATH
- Add to path C:\Python\Lib\site-package, C:\Python\Scripts
- install pip module using command python.exe -m pip install

## Installation of required libraries
- Open Windows powershell or Bash
- Go to the directory where the tests are clones
- Execute "pip install -r prerequiste-robotlib-requirements.txt" . This step will install all the required libraries.
```

## Project Structure

- Configurations       > -  Contains all the configurations relared to application under test. 
- Locators             > -  Contains locator css & xpath values used to uniquely identify UI web elements.
- TestCases            > -  Contains all the Testsuites and/ or Testcases.
- TestData             > -  Contains all the Testdata required for the test execution.
- Util                 > -  Contains all the custom libraries developed for rapid tms automation.
- target               > -  Contains the report, log and output xml files generated as part of test execution.

## Development Environment Setup

### Project setup using VS Code

Once user completes setting up pre-requisites and Libraries user can download VS Code IDE.
Navigate to Extentions and install Robocorp Code and Robot Framework Lanaguage Server Extentions.

### Integrate Robot framework with Eclipse

1: Open Eclipse, Goto Help >> Eclipse Marketplace.

2: Search for RED, you will get RED Editor for RobotFramework, Install this and restart the eclipse.

3: Create a Robotframework project : File>>New>> Others>> Robotframework>.Robot project


## Writing Automation Tests
Editors we can use: Pycharm , RED ROBOT, RIDE , TextEditor, Notepad, Notepad++, Sublime etc

1: Eclipse with RED-ROBOT Editor Plugin : 
Make sure to configure the imported project as Robot nature which will create the red.xml file where the required libraries needs to be configured.

2: Intellij IDEA with Robot Plugin: 
Can be used for execution of tests, however developing any new tests autocomplete for keywords don't work.


## Run from Command line

Change directory to project folder eastvantage and run below command to run persona test cases

```robotframework
robot TestCases
```

Run below command to run individual test case

```robotframework
robot TestCases/<testsuiteName>.robot
```

## Saving report to results folder

Particular directory(Reporting)

```robotframework
robot --outputdir target/ 
```

## Running Automation Tests

1: Select the test case which needs to be run

2 : Right click on test case and Select option Run As -> Robot Test

3: Test should start running with result Pass/Fail status

## Parallel Test Execution

1: Install pabot using follow command pip install -U robotframework-pabot

2: Open terminal in eclipse and navigate to test case path

3: Run the test in parallel with command pabot --processes 2 testcaseName.robot

Note : 2 is number of test case which will be running in parallel. (We can update it as per our requirement)