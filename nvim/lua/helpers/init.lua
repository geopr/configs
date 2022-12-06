function copy_relative_path()
  local absolute_path = vim.fn.expand('%:p');

  local project_path = vim.fn.getcwd();
  local project_path_len = string.len(project_path);
  local start_slice_from = project_path_len + 2;

  local relative_path = string.sub(absolute_path, start_slice_from);

  vim.fn.setreg('+', relative_path);
  vim.notify('Copied "' .. relative_path .. '" to the clipboard');
end

vim.api.nvim_create_user_command('CopyRelativeFilePath', copy_relative_path, {});
