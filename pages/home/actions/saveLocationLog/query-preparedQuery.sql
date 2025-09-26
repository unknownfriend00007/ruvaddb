
      INSERT INTO location_logs (user_id, latitude, longitude, accuracy, timestamp, log_type)
      VALUES (:param0, :param1, :param2, :param3, :param4, :param5)
      RETURNING *;
    