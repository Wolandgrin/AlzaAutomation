===============================================================
Alza web store testing with Robot Framework and SeleniumLibrary
===============================================================

For this project `Robot Framework`_ was used along with the
SeleniumLibrary_ verifying use cases Alza web store.

.. contents:: **Contents:**
   :depth: 1
   :local:

Environment
===========

OS: MacOS 13

IDE: PyCharm 2023.3.2

Python: 3.11.2

Terminal: zsh (iTerm2)

Verified: Mac/Win

Browser: Chrome

Downloading repository
======================

To get the project, you can either `download`_ the repository from GitHub or checkout
the `source code`_ directly. As a result you get ``AlzaAutomation`` directory with ``tests``
sub directory.

Test cases
==========

Test case files as well as a resource file used by them are located in
the ``tests`` directory.

`100cart_operations.robot`_
    A test suite with a Gherkin style tests.

`resource.robot`_
    A resource file with reusable keywords and variables.

    The system specific keywords created here form our own
    domain specific language. They utilize keywords provided
    by the imported SeleniumLibrary_.

Generated results
=================

After `running tests`_ you will get report and log in HTML format in the appropriate ``reports``
directory. For every new release build tasks should be executed to have release build information
gathered in ``docs`` folder:

- `report.html`_
- `log.html`_

Running automation tests
========================

Preconditions
-------------

Requirements should be installed in addition to preconditions in the
section above::

    pip install -r requirements.txt

Running tests
-------------

The `test cases`_ are located in the ``tests`` directory. They can be
executed using the ``robot`` command::

    robot  --log logs/log.html --outputdir reports tests

You can also run an individual test case file and use various command line
options supported by Robot Framework::

    robot tests/100cart_operations.robot
    robot --loglevel DEBUG -i Smoke tests

Useful commands for execution
-----------------------------

Examples of different parameters that might me executed for testing purposes::

    robot --variable BROWSER:IE tests/100cart_operations.robot
    robot  --log logs/log.html --outputdir reports --loglevel DEBUG -i Smoke --timestamp tests

.. _Robot Framework: http://robotframework.org
.. _SeleniumLibrary: https://github.com/robotframework/SeleniumLibrary
.. _Python: http://python.org
.. _pip: http://pip-installer.org
.. _download: https://github.com/wolandgrin/AlzaAutomation/archive/master.zip
.. _source code: https://github.com/wolandgrin/AlzaAutomation.git
.. _100cart_operations.robot: https://github.com/wolandgrin/AlzaAutomation/blob/master/tests/100cart_operations.robot
.. _resource.robot: https://github.com/wolandgrin/AlzaAutomation/blob/master/tests/resource.robot
.. _log.html: https://github.com/wolandgrin/AlzaAutomation/blob/master/docs/log.html
.. _report.html: https://github.com/wolandgrin/AlzaAutomation/blob/master/docs/report.html
.. _Robot Framework User Guide: http://robotframework.org/robotframework/#user-guide
