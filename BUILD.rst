Instructions to create releases
===============================


Preconditions
-------------

Operating system and Python requirements
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Creating releases is only supported with Python 3.6 or newer.

Using Invoke
~~~~~~~~~~~~

Invoke tasks are defined in the `<tasks.py>`_ file and they are executed from
the command line like::

    inv[oke] task [options]

Creating release
----------------

1. Test that everything works::

     robot --metadata tests

2. Move regenerated log and report to docs::

     inv move-docs

5. If README.rst has changed, generate project documentation based on it::

     inv project-docs
