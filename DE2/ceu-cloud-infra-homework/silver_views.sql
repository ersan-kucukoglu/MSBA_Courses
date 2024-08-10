-- ADD THE ATHENA SQL SCRIPT HERE WHICH CREATES THE `silver_views` TABLE
  CREATE TABLE ersan_kucukoglu_homework.silver_views
    WITH (
          format = 'PARQUET',
          parquet_compression = 'SNAPPY',
          external_location = 's3://ersan/datalake/views_silver'
    ) AS SELECT article,views,rank,date FROM ersan_kucukoglu_homework.bronze_views