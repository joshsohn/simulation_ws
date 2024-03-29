## ! DO NOT MANUALLY INVOKE THIS setup.py, USE CATKIN INSTEAD
# See:
#  https://answers.ros.org/question/192723/cant-find-python-scripts-after-sourcing/
#  http://docs.ros.org/api/catkin/html/user_guide/setup_dot_py.html
#  http://wiki.ros.org/PyStyleGuide

from distutils.core import setup
from catkin_pkg.python_setup import generate_distutils_setup

# fetch values from package.xml
setup_args = generate_distutils_setup(
    packages=['acl_joy'],
    package_dir={'': 'src'},
    requires=['rospy']
)

setup(**setup_args)