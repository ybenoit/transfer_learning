from setuptools import setup, find_packages

setup(
    name='transfer_learning',
    version='0.1',
    description="Transfer Learning with TensorFlow",
    url="",
    author='Yoann Benoit',
    author_email='',
    license='new BSD',
    packages=find_packages(),
    install_requires=['tensorflow'],
    tests_require=[],
    scripts=[],
    py_modules=["transfer_learning"],
    include_package_data=True,
    zip_safe=False
)