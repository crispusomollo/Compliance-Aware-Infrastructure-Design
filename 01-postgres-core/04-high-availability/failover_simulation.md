# Failover Simulation Procedure

## Step 1 – Stop Primary

```bash
sudo systemctl stop postgresql
```

## Step 2 - Promote Replica
```
pg_ctl promote -D /var/lib/postgresql/16/main
```

## Step 3 – Verify Promotion
```
SELECT pg_is_in_recovery();
```
Should return:
```
false
```

## Step 4 – Reconfigure Former Primary as Replica

