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


function dps() {
  _reset_databricks_profile_session
}
