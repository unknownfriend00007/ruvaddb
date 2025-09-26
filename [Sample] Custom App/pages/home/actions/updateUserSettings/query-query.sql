
      INSERT INTO settings (user_id, setting_key, setting_value)
      VALUES ({{params.userId}}, {{params.key}}, {{params.value}})
      ON CONFLICT (user_id, setting_key)
      DO UPDATE SET 
        setting_value = {{params.value}},
        updated_at = NOW()
      RETURNING *;
    