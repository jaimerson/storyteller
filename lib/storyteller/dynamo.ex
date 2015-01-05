defmodule Storyteller.Dynamo do
  use Dynamo

  config :dynamo,
    # The environment this Dynamo runs on
    env: Mix.env,

    # The OTP application associated with this Dynamo
    otp_app: :storyteller,

    # The endpoint to dispatch requests to
    endpoint: ApplicationRouter,

    # The route from which static assets are served
    # You can turn off static assets by setting it to false
    static_route: "/static"

  # Uncomment the lines below to enable the cookie session store
  # config :dynamo,
  #   session_store: Session.CookieStore,
  #   session_options:
  #     [ key: "_storyteller_session",
  #       secret: "FoCQ3oT2x0TZTsIzy2D3bS4ETWbL7D35G3iU6NpKzPEE+M+po+WVDbUTQzX34XTA"]

  # Default functionality available in templates
  templates do
    use Dynamo.Helpers
  end
end
