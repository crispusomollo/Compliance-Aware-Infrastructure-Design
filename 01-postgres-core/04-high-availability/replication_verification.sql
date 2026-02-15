-- On Primary
SELECT pid, state, client_addr, sync_state
FROM pg_stat_replication;

-- On Replica
SELECT status, sender_host, received_lsn, latest_end_lsn
FROM pg_stat_wal_receiver;

