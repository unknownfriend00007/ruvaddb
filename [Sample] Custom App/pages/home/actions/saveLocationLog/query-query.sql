
      INSERT INTO location_logs (user_id, latitude, longitude, accuracy, timestamp, log_type)
      VALUES ({{params.userId}}, {{params.latitude}}, {{params.longitude}}, {{params.accuracy}}, {{params.timestamp}}, {{params.logType}})
      RETURNING *;
    