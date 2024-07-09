from setuptools import setup, find_packages

setup(
    name='data_journey',
    version='0.1.0',
    author='Julian Caceres',
    author_email='juliancacrs@gmail.com',
    description='Learning',
    long_description=open('README.md').read(),
    long_description_content_type='text/markdown',
    url='https://github.com/juliancpy/data-journey',
    packages=find_packages(),  # Automatically find and include all packages
    classifiers=[
        'Programming Language :: Python :: 3',
        'Programming Language :: Python :: 3.10',
        'License :: OSI Approved :: MIT License',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.10',  # Specifies that your package requires Python 3.10 or higher
    install_requires=[
    ],
    extras_require={
        'dev': [
            'black==22.3.0',
            'pylint==2.13.5',
        ]
    },
    entry_points={
        'console_scripts': [
            'format=data_journey.module:format',
            'lintpy=data_journey.module:lintpy',
            'tests=data_journey.module:tests',
        ],
    },
)