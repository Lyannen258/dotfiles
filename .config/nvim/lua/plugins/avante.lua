return {
  "yetone/avante.nvim",
  mode = "legacy",
  opts = {
    provider = "mistral",
    mode = "legacy",
    providers = {
      mistral = {
        __inherited_from = "openai",
        api_key_name = "MISTRAL_API_KEY",
        endpoint = "https://api.mistral.ai/v1/",
        model = "codestral-latest",
        disable_tools = true,
        extra_request_body = {
          max_tokens = 4096, -- to avoid using max_completion_tokens
        },
      },
    },
  },
}
