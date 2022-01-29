  WITH target_log AS(
      SELECT
          transaction_hash,
          DATE(block_timestamp) AS transaction_date
      FROM 
          `bigquery-public-data.crypto_ethereum.logs` 
      WHERE 
          DATE(block_timestamp) BETWEEN "2021-08-06" AND '2021-12-29'
  ),
  target_block AS(
    SELECT
        `hash` AS b_hash,
        base_fee_per_gas
    FROM
        `bigquery-public-data.crypto_ethereum.blocks` 
    WHERE
        DATE(timestamp) BETWEEN "2021-08-06" AND '2021-12-29'
  ),
  target_transaction AS(
      SELECT
          `hash` AS t_hash,
          block_hash AS t_blockhash,
          value,
          gas,
          gas_price,
          receipt_effective_gas_price,
          receipt_status,
          receipt_gas_used,
      FROM
          `bigquery-public-data.crypto_ethereum.transactions`
      WHERE
          receipt_status = 1
  )
  SELECT
      transaction_date,
      COUNT(transaction_hash) AS total_transaction_count,
      SUM(value / power(10,18))/COUNT(transaction_hash) AS avg_Volume,
      SUM(receipt_effective_gas_price / power(10,18) * receipt_gas_used)/SUM(receipt_gas_used) AS avg_gas_fee,
      SUM(base_fee_per_gas / power(10,18) * receipt_gas_used)/SUM(receipt_gas_used) AS avg_base_fee,
      SUM((receipt_effective_gas_price - base_fee_per_gas) /power(10,18) * receipt_gas_used)/SUM(receipt_gas_used) AS avg_priority_fee
  FROM
      target_log
  LEFT JOIN
      target_transaction
  ON
      target_log.transaction_hash = target_transaction.t_hash
  LEFT JOIN target_block 
  ON target_block.b_hash = target_transaction.t_blockhash
  GROUP BY
      transaction_date
  ORDER BY
      transaction_date