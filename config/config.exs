import Config

toBool = fn
  "true", _ -> true
  "false", _ -> false
  nil, default -> default
end

config :type_class,
  skip_check_props?: toBool.(System.get_env("SKIP_PROPS_CHECK"), true)
