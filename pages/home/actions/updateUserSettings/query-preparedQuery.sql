
      INSERT INTO settings (user_id, setting_key, setting_value)
      VALUES (:param0, :param1, :param2)
      ON CONFLICT (user_id, setting_key)
      DO UPDATE SET 
        setting_value = :param3,
        updated_at = NOW()
      RETURNING *;
    