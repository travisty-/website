{
  # https://devenv.sh/basics
  env.ASTRO_TELEMETRY_DISABLED = "1";

  # https://devenv.sh/packages
  packages = [];

  # https://devenv.sh/languages
  languages.javascript = {
    enable = true;
    pnpm.enable = true;
    pnpm.install.enable = true;
  };

  # https://devenv.sh/basics
  enterShell = ''
    echo "• Entering shell ..."
  '';

  # https://devenv.sh/git-hooks
  git-hooks.hooks = {
    eslint = {
      enable = true; # via eslint-plugin-astro
      entry = "pnpm exec eslint --fix --max-warnings 0";
      files = "\\.(astro|[cm]?[jt]sx?)$";
    };

    prettier = {
      enable = true; # via prettier-plugin-astro
      entry = "pnpm exec prettier --write --ignore-unknown";
    };

    typos.enable = true;
  };
}
