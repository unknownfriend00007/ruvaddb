
      INSERT INTO sos_events (user_id, latitude, longitude, accuracy, photo_url, video_url, location_file_url, messages_sent)
      VALUES (:param0, :param1, :param2, :param3, :param4, :param5, :param6, :param7::jsonb)
      RETURNING *;
    