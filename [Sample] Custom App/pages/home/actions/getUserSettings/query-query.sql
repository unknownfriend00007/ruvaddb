
      SELECT setting_key, setting_value 
      FROM settings 
      WHERE user_id = {{params.userId}};
    