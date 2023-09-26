session_root "~/mx-unit"

if initialize_session "mx-unit"; then
  new_window "root"

  split_v 25

  select_pane 1

  new_window "localnet"
  run_cmd "cd localnet"
  run_cmd "clear"

  new_window "chain"
  run_cmd "cd mx-chain-go"

  split_v 25
  run_cmd "cd mx-chain-go"
  run_cmd "clear"

  select_pane 1
  run_cmd "nvim ."

  new_window "vm"
  # run_cmd "cd mx-chain-go"

  split_v 25
  # run_cmd "cd mx-chain-go"
  # run_cmd "clear"

  select_pane 1
  # run_cmd "nvim ."

  select_window 1
fi

finalize_and_go_to_session
