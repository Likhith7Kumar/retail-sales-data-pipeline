PUT file://sales.csv @%raw_sales;
COPY INTO raw_sales FROM @%raw_sales FILE_FORMAT=(TYPE = CSV SKIP_HEADER=1);