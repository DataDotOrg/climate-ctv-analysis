pkgsearch::pkg_search("climate", size = 100) |>
  dplyr::filter(score > 0.1 * max(score)) |>
  dplyr::pull(package) |>
  setdiff(c("heterogen")) |> # Broken GitHub link
  list(packages = _) |>
  yaml::write_yaml("settings.yml")
