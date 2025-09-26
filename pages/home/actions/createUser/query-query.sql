
      INSERT INTO users (device_id, secret_code, pin_hash)
      VALUES ({{params.deviceId}}, {{params.secretCode}}, {{params.pinHash}})
      ON CONFLICT (device_id) 
      DO UPDATE SET 
        secret_code = {{params.secretCode}},
        pin_hash = {{params.pinHash}},
        updated_at = NOW()
      RETURNING *;
    