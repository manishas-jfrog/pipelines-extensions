execute_input() {
  local branch=$(find_resource_variable %%context.resourceName%% gitBranch)
  local url=$(find_resource_variable %%context.resourceName%% gitUrl)
  local resourcePath=$(find_resource_variable %%context.resourceName%% resourcePath)
  pushd $resourcePath
  git clone --branch $branch $url
  popd
}
 
execute_command "execute_input %%context.resourceName%%"
