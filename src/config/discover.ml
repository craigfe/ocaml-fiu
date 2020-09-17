module C = Configurator.V1

let () =
  C.main ~name:"faults" (fun t ->
      match C.Pkg_config.get t with
      | None ->
          C.die "Require pkg-config to detect `libfiu' installation location"
      | Some t -> (
          match
            C.Pkg_config.query_expr_err t ~package:"libfiu"
              ~expr:"libfiu --variable=libdirs"
          with
          | Error msg -> C.die "%s" msg
          | Ok { libs; _ } -> (
              match libs with
              | [ t ] -> Format.eprintf "%s" t
              | _ -> assert false ) ))
