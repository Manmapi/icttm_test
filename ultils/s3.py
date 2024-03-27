import boto3


# Function to upload file to minio
def upload_file_to_minio(
        file_path,
        minio_bucket,
        minio_object_name,
        obj_storage_endpoint,
        obj_storage_access_key,
        obj_storage_secret_key
):
    s3c = boto3.resource(
        's3',
        endpoint_url=obj_storage_endpoint,
        aws_access_key_id=obj_storage_access_key,
        aws_secret_access_key=obj_storage_secret_key,
        config=boto3.session.Config(signature_version='s3v4'),
        verify=True,

    )
    s3c.Bucket(minio_bucket).upload_file(file_path, minio_object_name)
