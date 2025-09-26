
      SELECT * FROM location_logs 
      WHERE user_id = :param0
      ORDER BY timestamp DESC
      LIMIT :param1;
    