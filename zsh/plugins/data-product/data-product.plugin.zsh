function data_product_prompt_info() {
  if [ -z ${DATABRICKS_CONFIG_PROFILE+x} ]; then
    echo ""
  else
    echo " ($DATABRICKS_CONFIG_PROFILE)"
  fi
}


function _data_product_session() {
  unset DATABRICKS_CONFIG_PROFILE
  echo "Databricks config profile unset"
}


function dps() {
  _data_product_session
}
