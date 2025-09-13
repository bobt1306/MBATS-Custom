#!/bin/bash

echo "Running scripts on jupyter notebook..."

# Run secmaster database schema builder
echo "Building secmaster database schema..."
docker exec -it jupyter-image /bin/sh -c "python /home/jovyan/work/q_pack/db_pack/schema/secmaster_db_schema_builder.py"

# Run secmaster database symbol loader
echo "Loading secmaster database symbols..."
docker exec -it jupyter-image /bin/sh -c "python /home/jovyan/work/q_pack/db_pack/schema/secmaster_db_symbol_loader.py"

# Run risk database schema builder
echo "Building risk database schema..."
docker exec -it jupyter-image /bin/sh -c "python /home/jovyan/work/q_pack/db_pack/schema/risk_db_schema_builder.py"

echo "Script execution completed!"
