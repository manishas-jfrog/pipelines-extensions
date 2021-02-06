execute_step() {
  local resourceName=$(find_step_configuration_value resourceName)
  local fileName=$(find_step_configuration_value fileName)
  local gitRepoName=$(find_resource_variable $resourceName gitRepoName)
  local resourcePath=$(find_resource_variable $resourceName resourcePath)/$gitRepoName
  echo "Changing directory: $resourcePath"
  pushd $resourcePath
  ansible-playbook $fileName
  popd
}
execute_command execute_step
