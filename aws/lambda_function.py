import boto3
from datetime import datetime


s3 = boto3.resource('s3')
bucket_name = 'exercise-log'

def lambda_handler(event, context):
    now = datetime.now()
    dt_string = now.strftime("%d-%m-%Y-%H:%M:%S")
    
    object_key = f'logs/{dt_string}.txt'
    s3.Object(bucket_name, object_key).put(Body=f'function invoked at {dt_string}')
    return {
        'statusCode': 200,
        'body': f'log stored in S3 bucket {bucket_name}'
    }
