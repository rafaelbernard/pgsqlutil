# For High Loaded Transactions DB

Like financial or similar.



*vacuum tweaks*

```
autovacuum_free_max_age = 1000000000
```

*Optimizer tweaks*

```
random_page_cost = 1.1
effective_cache_size = $ram * 0.75
effective_io_concurrency > 4
```
