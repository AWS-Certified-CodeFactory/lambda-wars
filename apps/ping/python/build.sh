zip -g ping-python.zip *.py
aws s3 cp ping-python.zip s3://net.kwler.lambda.wrz.artifacts/