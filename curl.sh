curl -X POST "<AI_GATEWAY_BASE_URL>/chat/completions" \
  -H "Content-Type: application/json" \
  -H "cf-aig-authorization: Bearer <CF_AIG_AUTHORIZATION>" \
  -H "Authorization: Bearer <OPENROUTER_API_KEY>" \
  -d '{
    "model": "openrouter/auto",
    "messages": [
      {"role": "user", "content": "Hello"}
    ]
  }'