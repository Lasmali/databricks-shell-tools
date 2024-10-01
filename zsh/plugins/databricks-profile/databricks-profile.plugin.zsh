function databricks_profile_prompt_info() {
  if [ -z ${DATABRICKS_CONFIG_PROFILE+x} ]; then
    echo ""
  else
    echo " ($DATABRICKS_CONFIG_PROFILE)"
  fi
}


function _reset_databricks_profile_session() {
  unset DATABRICKS_CONFIG_PROFILE
  echo "Databricks config profile reset"
}


function dbp_reset() {
  _reset_databricks_profile_session
}


function _list_available_databricks_profiles() {

  BLUE="34"
  BOLDBLUE="\e[1;${BLUE}m"
  ENDCOLOR="\e[0m"

  # Present the profiles to the user
  echo "Available Databricks profiles:"

  profiles=($(grep '^\[.*\]$' ~/.databrickscfg | sed 's/[][]//g'))
  i=1
  for profile in "${profiles[@]}"; do
    echo "$i. ${BOLDBLUE}$profile${ENDCOLOR}"
    i=$((i+1))
  done


  # Read user selection
  read "selected_profile?Choose a number: "

  export DATABRICKS_CONFIG_PROFILE=${profiles[$selected_profile]}
}


function dbp_profiles() {
  _list_available_databricks_profiles
}
