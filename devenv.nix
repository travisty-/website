{pkgs, ...}: {
  env.ASTRO_TELEMETRY_DISABLED = "1";

  packages = with pkgs; [
    astro-language-server
    tailwindcss-language-server
  ];

  git-hooks.hooks = {
    eslint.files = "\\.(astro|[cm]?[jt]sx?)$";
    prettier.files = "\\.(astro|[cm]?[jt]sx?|json|css|scss|less|html)$";
  };
}
