
      INSERT INTO sos_events (user_id, latitude, longitude, accuracy, photo_url, video_url, location_file_url, messages_sent)
      VALUES ({{params.userId}}, {{params.latitude}}, {{params.longitude}}, {{params.accuracy}}, {{params.photoUrl}}, {{params.videoUrl}}, {{params.locationFileUrl}}, {{params.messagesSent}}::jsonb)
      RETURNING *;
    