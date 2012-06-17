Amazon::Ecs.options = {
  :associate_tag => 'justintacom-20',
  :AWS_access_key_id => ENV['S3_KEY_ID'],
  :AWS_secret_key => ENV['S3_SECRET']
}