
      SELECT * FROM location_logs 
      WHERE user_id = {{params.userId}}
      ORDER BY timestamp DESC
      LIMIT {{params.limit}};
    