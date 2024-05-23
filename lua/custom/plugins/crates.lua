return {
  {
    'saecki/crates.nvim',
    tag = 'stable',
    config = function()
      local crates = require 'crates'
      crates.setup()
      local opts = { silent = true }

      vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })

      vim.keymap.set('n', '<leader>ct', crates.toggle, { silent = true, desc = '[T]oggle' })
      vim.keymap.set('n', '<leader>cr', crates.reload, { silent = true, desc = '[R]eload' })

      vim.keymap.set('n', '<leader>cv', crates.show_versions_popup, { silent = true, desc = 'Show [V]ersions' })
      vim.keymap.set('n', '<leader>cf', crates.show_features_popup, { silent = true, desc = 'Show [F]eatures' })
      vim.keymap.set('n', '<leader>cd', crates.show_dependencies_popup, { silent = true, desc = 'Show [D]ependencies' })

      vim.keymap.set('n', '<leader>cu', crates.update_crate, { silent = true, desc = '[U]pdate Crate' })
      vim.keymap.set('v', '<leader>cu', crates.update_crates, { silent = true, desc = '[U]pdate Crates' })
      vim.keymap.set('n', '<leader>ca', crates.update_all_crates, { silent = true, desc = 'Update [A]ll Crates' })
      vim.keymap.set('n', '<leader>cU', crates.upgrade_crate, { silent = true, desc = '[U]pgrade Crate' })
      vim.keymap.set('v', '<leader>cU', crates.upgrade_crates, { silent = true, desc = '[U]pgrade Crates' })
      vim.keymap.set('n', '<leader>cA', crates.upgrade_all_crates, { silent = true, desc = 'Upgrade [A]ll Crates' })

      vim.keymap.set('n', '<leader>cx', crates.expand_plain_crate_to_inline_table, { silent = true, desc = 'E[x]pand Plain Crate to Inline Table' })
      vim.keymap.set('n', '<leader>cX', crates.extract_crate_into_table, { silent = true, desc = 'E[x]tract Crate Into Table' })

      vim.keymap.set('n', '<leader>cH', crates.open_homepage, { silent = true, desc = 'Open [H]omepage' })
      vim.keymap.set('n', '<leader>cR', crates.open_repository, { silent = true, desc = 'Open [R]epository' })
      vim.keymap.set('n', '<leader>cD', crates.open_documentation, { silent = true, desc = 'Open [D]ocumentation' })
      vim.keymap.set('n', '<leader>cC', crates.open_crates_io, { silent = true, desc = 'Open [C]rates.io' })
    end,
  },
}
