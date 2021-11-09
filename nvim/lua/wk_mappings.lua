local mappings = {

    ["/"] = "Comment Toggle",
    ["w"] = {
      name = "+Windows",
      ["c"] = { "Close Split" },
      ["h"] = { "Expand Split right" },
      ["l"] = { "Expand Split left" },
      ["j"] = { "Expand Split above" },
      ["k"] = { "Expand Split below" },
      ["b"] = { "Balance Splits" },
      ["s"] = { "Split Horizontal" },
      ["v"] = { "Split Vertical" },
    },
    b = {
      name = "+Buffer",
      ["Tab"] = { "Next Buffer" },
      ["Shift Tab"] = { "Previous Buffer" },
      ["n"] = { "New Buffer" },
      ["d"] = { "Close Buffer" },
      ["p"] = { "Pick a Buffer" },
    },
    g = {
      name = "+Git",
      g = { "Open LazyGit" },
      c = { "Checkout Commits" },
      C = { "Checkout commit(for current file)" },
      b = { "Checkout Branch" },
      t = { "Open changed file" },
      j = { "Next Hunk" },
      k = { "Prev Hunk" },
      l = { "Blame" },
      p = { "Preview Hunk" },
      r = { "Reset Hunk" },
      R = { "Reset Buffer" },
      s = { "Stage Hunk" },
      u = { "Undo Stage Hunk" },
    },
    h = {
      name = "+Help",
      t = { "Builtins" },
      c = { "Commands" },
      h = { "Help Pages" },
      k = { "Key Maps" },
      o = { "Options" },
      a = { "Auto Commands" },
    },
    c = {
      name = "+Code",
      i = { "Repl" },
      r = { "Rename Function" },
      a = { "Code Actions" },
      f = { "Find Reference" },
      s = { "Toggle Symbols Tree" },
      d = { "Declarations" },
      n = { "Diagnostic next" },
      p = { "Diagnostic prev" },
      l = { "Error List" },
      g = {
        name = "+Goto",
        D = { "Jump to Definition" },
        r = { "Jump to Reference" },
        i = { " Buf implementation " },
      },
    },
    p = {
      name = "+Plugins",
      i = { "Install" },
      s = { "Sync" },
      c = { "Clean" },
      C = { "Compile" },
      t = { "Status" },
      r = { "Reload neovim" },
    },
    s = {
      name = "+Search",
      g = { "Word Grep" },
      b = { "Search in Buffer" },
      h = { "Command History" },
      m = { "Jump to Marks" },
      c = { "Colorschemes with previwer" },
    },
    f = {
      name = "+Files",
      f = { "Find Files" },
      c = { "Nvim Config Files" },
      o = { "Open Recent Files" },
      n = { "New File" },
      m = { "Media Files" },
      t = { "Format File" },
      r = { "Format File" },
      b = { "Telescope Browse Files" },
    },
    [":"] = { "Command History" },
    q = {
      name = "+Quit/Session",
      ["!"] = { "Quit without saving" },
      q = { "Save Quit" },
      s = { "Save Session" },
      l = { "Session Load" },
    },
    t = {
      name = "+Terminal",
      t = { "Open Terminal" },
      v = { "Vert Split Terminal" },
      s = { "Vert Split Terminal" },
    },
    z = {
      name = "+Zen",
      z = { "Atraxis Mode" },
      m = { "Minimalist Mode" },
      f = { "Focus Mode" },
    },
    e = { "Nvim Tree" },
  }
  
  for i = 0, 10 do
    mappings[tostring(i)] = "which_key_ignore"
  end
  
  local wk = require("which-key")
  
  wk.register(mappings, { prefix = "<leader>" })