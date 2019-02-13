# For High Loaded Transactions DB

When you need OLTP, HA, performance... Like financial or similar.

*wal tweaks*

```
checkpoint_completion_target = 0.9
checkpoint_timeout >=  20m
max_wal_size = pg_current_wal_lsn()
min_wal_size = max_wal_size / 4
```

max_wal_size = pg_current_wal_lsn_diff() * 2

select pg_current_wal_lsn();
// wait 1 hour
select pg_current_wal_lsn();

select pg_wal_lsn_diff(
  'reading 1', 'reading 2'
  )


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
