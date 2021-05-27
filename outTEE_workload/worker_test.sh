for i in {1..20}; do
    ./generic_client.py -o --uri "http://avalon-listener:1947" --workload_id "echo-result" --in_data "Hello" --worker_id "guotz-singleton-worker-1"
done