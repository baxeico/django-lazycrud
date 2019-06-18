#!/bin/bash
version=$1

if [ -z "$version" ]; then
    echo "Usage: $0  version"
    exit 1
fi

python setup.py sdist
twine upload dist/django-lazycrud-${version}.tar.gz
rm -rf build dist django_lazycrud.egg-info
