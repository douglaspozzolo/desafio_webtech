json.extract! historico_laboral, :id, :nome_identificador, :empregador_id, :pessoa_fisica_id, :documento_id, :anos, :meses, :dias, :created_at, :updated_at
json.url historico_laboral_url(historico_laboral, format: :json)
