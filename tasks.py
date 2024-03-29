import os
from pathlib import Path
import shutil
from docutils.core import publish_cmdline
from invoke import task


assert Path.cwd() == Path(__file__).parent

@task
def project_docs(ctx):
    """Generate project documentation.
    """
    args = ['--stylesheet=style.css,extra.css',
            '--link-stylesheet',
            'README.rst',
            'docs/index.html']
    publish_cmdline(writer_name='html5', argv=args)
    print(Path(args[-1]).absolute())

@task
def move_docs(ctx):
    """Move report.html and log2.html to docs
    """
    log = Path('reports/logs/log2.html')
    report = Path('./reports/report.html')
    if not os.path.exists(Path('.') / 'docs'):
        os.mkdir('docs')
    dest = Path('.') / 'docs'
    print(log.absolute())
    shutil.copy(log.absolute(), str(dest))
    print(report.absolute())
    shutil.copy(report.absolute(), str(dest))
