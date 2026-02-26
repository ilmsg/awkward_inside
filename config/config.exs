import Config

config :awkward_inside, AwkwardInside.Repo,
  database: "awkward_inside_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

config :awkward_inside,
  ecto_repos: [AwkwardInside.Repo]
