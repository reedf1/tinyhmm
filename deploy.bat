tox
bumpversion patch
rm -rf build
rm -rf src/*.egg-info
python setup.py clean --all sdist bdist_wheel
twine upload --skip-existing dist/*.whl dist/*.gz
