import pandas as pd
import os

data_folder = "data/raw"

csv_files = sorted(
    [file for file in os.listdir(data_folder) if file.endswith(".csv")]
)

for file_name in csv_files:

    file_path = os.path.join(data_folder, file_name)

    print("\n" + "=" * 70)
    print(f"Dataset: {file_name}")

    dataset = pd.read_csv(file_path)

    print("\nShape:")
    print(dataset.shape)

    print("\nData Types:")
    print(dataset.dtypes)

    print("\nFirst 5 Rows:")
    print(dataset.head())

    print("\nMissing Values:")
    print(dataset.isnull().sum())

    print("\nDuplicate Rows:")
    print(dataset.duplicated().sum())