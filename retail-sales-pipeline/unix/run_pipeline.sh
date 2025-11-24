#!/bin/bash
echo "Starting DBT pipeline..."
dbt run
dbt test
echo "Pipeline completed successfully!"
