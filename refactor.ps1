Write-Host "🚀 Starting PySpark repo refactor..."

# =========================
# STEP 1: DELETE JUNK FILES
# =========================
$deleteFiles = @(
    "examples\demo.py",
    "examples\parallel-demo.py",
    "examples\sequential-demo.py",
    "examples\setup.py",
    "examples\base.py",
    "examples\__init__.py"
)

foreach ($file in $deleteFiles) {
    if (Test-Path $file) {
        Remove-Item $file -Force
        Write-Host "Deleted $file"
    }
}

# =========================
# STEP 2: CREATE STRUCTURE
# =========================
$folders = @(
    "src\utils",
    "pipelines\batch",
    "pipelines\streaming",
    "pipelines\bronze",
    "pipelines\silver",
    "pipelines\gold"
)

foreach ($folder in $folders) {
    if (!(Test-Path $folder)) {
        New-Item -ItemType Directory -Path $folder | Out-Null
        Write-Host "Created $folder"
    }
}

# =========================
# STEP 3: MOVE USEFUL FILES
# =========================

# Move utility files
$utils = @(
    "examples\distance.py",
    "examples\geoCalc.py",
    "examples\calculatingGeoDistance.py",
    "examples\RowDuplicate.py"
)

foreach ($file in $utils) {
    if (Test-Path $file) {
        Move-Item $file src\utils\ -Force
        Write-Host "Moved $file to src\utils"
    }
}

# Move streaming files
$streaming = @(
    "examples\streaming_word_count.py",
    "examples\structured_streaming_word_count.py",
    "examples\stateful_streaming_word_count.py"
)

foreach ($file in $streaming) {
    if (Test-Path $file) {
        Move-Item $file pipelines\streaming\ -Force
        Write-Host "Moved $file to pipelines\streaming"
    }
}

# =========================
# STEP 4: CREATE PIPELINE FILES
# =========================

# Bronze
Set-Content pipelines\batch\bronze_ingestion.py @"
def ingest_data():
    print("Bronze: ingesting raw data")

if __name__ == "__main__":
    ingest_data()
"@

# Silver
Set-Content pipelines\batch\silver_transformation.py @"
def transform_data():
    print("Silver: transforming data")

if __name__ == "__main__":
    transform_data()
"@

# Gold
Set-Content pipelines\batch\gold_aggregation.py @"
def aggregate_data():
    print("Gold: aggregating data")

if __name__ == "__main__":
    aggregate_data()
"@

# Main pipeline
Set-Content pipelines\batch\main_pipeline.py @"
from bronze_ingestion import ingest_data
from silver_transformation import transform_data
from gold_aggregation import aggregate_data

def run_pipeline():
    ingest_data()
    transform_data()
    aggregate_data()

if __name__ == "__main__":
    run_pipeline()
"@

Write-Host "✅ Pipeline files created"

# =========================
# STEP 5: CLEAN EMPTY EXAMPLES
# =========================
$remaining = Get-ChildItem examples\

if ($remaining.Count -eq 0) {
    Remove-Item examples -Force
    Write-Host "Removed empty examples folder"
}

Write-Host "🎉 Refactor complete!"