Get-ChildItem temp_repos\Learning-PySpark -Recurse -Filter *.py | Copy-Item -Destination examples\
Get-ChildItem temp_repos\PySpark-Examples -Recurse -Filter *.py | Copy-Item -Destination examples\
Get-ChildItem temp_repos\pyspark-tutorial -Recurse -Filter *.py | Copy-Item -Destination examples\

Get-ChildItem temp_repos\PySpark-ETL-Telecom -Recurse -Filter *.py | Copy-Item -Destination pipelines\batch\