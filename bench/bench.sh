nohup env FIL_PROOFS_USE_GPU_COLUMN_BUILDER=1 FIL_PROOFS_USE_GPU_TREE_BUILDER=1 RUST_LOG=info ./benchy prodbench --config config.json > log-bench.log 2>&1 &
