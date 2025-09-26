
      INSERT INTO users (device_id, secret_code, pin_hash)
      VALUES (:param0, :param1, :param2)
      ON CONFLICT (device_id) 
      DO UPDATE SET 
        secret_code = :param3,
        pin_hash = :param4,
        updated_at = NOW()
      RETURNING *;
    