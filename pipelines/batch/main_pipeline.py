from bronze_ingestion import ingest_data
from silver_transformation import transform_data
from gold_aggregation import aggregate_data

def run_pipeline():
    ingest_data()
    transform_data()
    aggregate_data()

if __name__ == "__main__":
    run_pipeline()
