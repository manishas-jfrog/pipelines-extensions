execute_step() {
  # local resourceName=$(find_step_configuration_value resourceName)
  # local fileName=$(find_step_configuration_value fileName)
  # local gitRepoName=$(find_resource_variable $resourceName gitRepoName)
  # local resourcePath=$(find_resource_variable $resourceName resourcePath)/$gitRepoName
  # echo "Changing directory: $resourcePath"
  # pushd $resourcePath
  buildDir=$(find_resource_variable "$inputGitRepoResourceName" resourcePath)
  pushd $buildDir
  ansible-playbook $fileName
  popd
  echo "Executed ansible playbook defined in: $fileName"
}
execute_command execute_step
