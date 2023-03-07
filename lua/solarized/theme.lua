local solarized = require("solarized.colors")
local theme = {}

theme.loadSyntax = function()
    local syntax = {
        Type = { fg = solarized.magenta }, -- int, long, char, etc.
        StorageClass = { fg = solarized.orange }, -- static, register, volatile, etc.
        Structure = { fg = solarized.magenta }, -- struct, union, enum, etc.
        Constant = { fg = solarized.blue }, -- any constant
        String = { fg = solarized.yellow, bg = solarized.none }, -- Any string
        Character = { fg = solarized.violet }, -- any character constant: 'c', '\n'
        Number = { fg = solarized.red }, -- a number constant: 5
        Boolean = { fg = solarized.violet }, -- a boolean constant: TRUE, false
        Float = { fg = solarized.red }, -- a floating point constant: 2.3e10
        Statement = { fg = solarized.orange }, -- any statement
        Label = { fg = solarized.orange }, -- case, default, etc.
        Operator = { fg = solarized.fg }, -- sizeof", "+", "*", etc.
        Exception = { fg = solarized.orange }, -- try, catch, throw
        PreProc = { fg = solarized.violet }, -- generic Preprocessor
        Include = { fg = solarized.violet }, -- preprocessor #include
        Define = { fg = solarized.violet }, -- preprocessor #define
        Macro = { fg = solarized.violet }, -- same as Define
        Typedef = { fg = solarized.green }, -- A typedef
        PreCondit = { fg = solarized.violet }, -- preprocessor #if, #else, #endif, etc.
        Special = { fg = solarized.fg }, -- any special symbol
        SpecialChar = { fg = solarized.green }, -- special character in a constant
        Tag = { fg = solarized.red }, -- you can use CTRL-] on this
        Delimiter = { fg = solarized.fg }, -- character that needs attention like , or .
        SpecialComment = { fg = solarized.cyan }, -- special things inside a comment
        Debug = { fg = solarized.violet }, -- debugging statements
        Underlined = { fg = solarized.link, bg = solarized.none, style = "underline" }, -- text that stands out, HTML links
        Ignore = { fg = solarized.disabled }, -- left blank, hidden
        Error = { fg = solarized.error, bg = solarized.none, style = "bold,underline" }, -- any erroneous construct
        Todo = { fg = solarized.yellow, bg = solarized.none, style = "bold,italic" }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
        htmlLink = { fg = solarized.link, style = "underline" },
        htmlH1 = { fg = solarized.cyan },
        htmlH2 = { fg = solarized.red },
        htmlH3 = { fg = solarized.green },
        htmlH4 = { fg = solarized.yellow },
        htmlH5 = { fg = solarized.purple },
        markdownH1 = { fg = solarized.cyan },
        markdownH2 = { fg = solarized.red },
        markdownH3 = { fg = solarized.green },
        markdownH1Delimiter = { fg = solarized.cyan },
        markdownH2Delimiter = { fg = solarized.red },
        markdownH3Delimiter = { fg = solarized.green },
        cmakeArguments = { fg = solarized.blue },
        cmakeGeneratorExpressions = { fg = solarized.green },
    }

    -- Options:

    syntax.Comment = { fg = solarized.comments } -- normal comments
    syntax.Conditional = { fg = solarized.orange } -- normal if, then, else, endif, switch, etc.
    syntax.Keyword = { fg = solarized.orange } -- normal for, do, while, etc.
    syntax.Repeat = { fg = solarized.orange } -- normal any other keyword
    syntax.Function = { fg = solarized.blue } -- normal function names
    syntax.Identifier = { fg = solarized.blue } -- any variable name

    return syntax
end

theme.loadEditor = function()
    local editor = {
        Normal = { fg = solarized.fg, bg = solarized.bg }, --  used for the columns set with 'colorcolumn'
        NormalFloat = { fg = solarized.fg, bg = solarized.float }, -- normal text and background color
        Conceal = { fg = solarized.disabled }, -- placeholder characters substituted for concealed text (see 'conceallevel')
        Cursor = { fg = solarized.none, bg = solarized.cursor }, -- the character under the cursor
        CursorIM = { fg = solarized.cursor, bg = solarized.none }, -- like Cursor, but used when in IME mode
        Directory = { fg = solarized.blue, bg = solarized.none }, -- directory names (and other special names in listings)
        -- DiffAdd = { bg = "#204529" },
        -- DiffChange = { bg = "#1f2231" },
        -- DiffDelete = { bg = "#37222c" },
        -- DiffText = { bg = "#394b70" },
        DiffAdd = { fg = solarized.none, bg = "#204529" },
        DiffChange = { fg = solarized.none, bg = "#0f5174" },
        DiffDelete = { fg = solarized.base02, bg = solarized.bg },
        DiffText = { fg = solarized.yellow, bg = "#115a5d" },
        EndOfBuffer = { fg = solarized.disabled },
        ErrorMsg = { fg = solarized.none },
        Folded = { fg = solarized.disabled, bg = solarized.none },
        FoldColumn = { fg = solarized.blue },
        IncSearch = { fg = solarized.highlight, bg = solarized.white, style = "reverse" },
        LineNr = { fg = solarized.comments, bg = solarized.none },
        CursorLineNr = { fg = solarized.green, bg = solarized.selection },
        MatchParen = { fg = solarized.green, bg = solarized.none },
        ModeMsg = { fg = solarized.accent },
        MoreMsg = { fg = solarized.accent },
        NonText = { fg = solarized.disabled },
        Pmenu = { fg = solarized.fg, bg = solarized.none },
        PmenuSel = { fg = solarized.accent, bg = solarized.active },
        PmenuSbar = { fg = solarized.text, bg = solarized.contrast },
        PmenuThumb = { fg = solarized.fg, bg = solarized.accent },
        Question = { fg = solarized.green },
        QuickFixLine = { fg = solarized.highlight, bg = solarized.white, style = "reverse" },
        qfLineNr = { fg = solarized.highlight, bg = solarized.white, style = "reverse" },
        Search = { fg = solarized.highlight, bg = solarized.white, style = "reverse" },
        SpecialKey = { fg = solarized.purple },
        SpellBad = { fg = solarized.red, bg = solarized.none, style = "italic,undercurl" },
        SpellCap = { fg = solarized.blue, bg = solarized.none, style = "italic,undercurl" },
        SpellLocal = { fg = solarized.cyan, bg = solarized.none, style = "italic,undercurl" },
        SpellRare = { fg = solarized.purple, bg = solarized.none, style = "italic,undercurl" },
        StatusLine = { fg = solarized.fg, bg = solarized.contrast },
        StatusLineNC = { fg = solarized.text, bg = solarized.disabled },
        StatusLineTerm = { fg = solarized.fg, bg = solarized.contrast },
        StatusLineTermNC = { fg = solarized.text, bg = solarized.disabled },
        TabLineFill = { fg = solarized.fg },
        TablineSel = { fg = solarized.bg, bg = solarized.accent },
        Tabline = { fg = solarized.base02 },
        Title = { fg = solarized.green, bg = solarized.none },
        Visual = { fg = solarized.none, bg = solarized.selection },
        VisualNOS = { fg = solarized.none, bg = solarized.selection },
        WarningMsg = { fg = solarized.yellow },
        WildMenu = { fg = solarized.orange, bg = solarized.none },
        CursorColumn = { fg = solarized.none, bg = solarized.active },
        CursorLine = { fg = solarized.none, bg = solarized.selection },
        ToolbarLine = { fg = solarized.fg, bg = solarized.bg_alt },
        ToolbarButton = { fg = solarized.fg, bg = solarized.none },
        NormalMode = { fg = solarized.bg, bg = solarized.blue },
        InsertMode = { fg = solarized.bg, bg = solarized.green },
        ReplacelMode = { fg = solarized.bg, bg = solarized.cyan },
        VisualMode = { fg = solarized.bg, bg = solarized.violet },
        CommandMode = { fg = solarized.bg, bg = solarized.magenta },
        Warnings = { fg = solarized.yellow },
        healthError = { fg = solarized.error },
        healthSuccess = { fg = solarized.green },
        healthWarning = { fg = solarized.yellow },
        -- Dashboard
        DashboardShortCut = { fg = solarized.grey },
        DashboardHeader = { fg = solarized.grey },
        DashboardCenter = { fg = solarized.grey },
        DashboardFooter = { fg = solarized.green },
        DiagnosticError = { fg = solarized.error }, -- used for "Error" diagnostic virtual text
        DiagnosticSignError = { fg = solarized.error }, -- used for "Error" diagnostic signs in sign column
        DiagnosticFloatingError = { fg = solarized.error }, -- used for "Error" diagnostic messages in the diagnostics float
        DiagnosticVirtualTextError = { fg = solarized.error }, -- Virtual text "Error"
        DiagnosticUnderlineError = { style = "undercurl", sp = solarized.error }, -- used to underline "Error" diag
        DiagnosticWarn = { fg = solarized.warning }, -- used for "Warning" diagnostic signs in sign column
        DiagnosticSignWarn = { fg = solarized.warning }, -- used for "Warning" diagnostic signs in sign column
        DiagnosticFloatingWarn = { fg = solarized.warning }, -- used for "Warning" diagnostic messages in the diagnostics float
        DiagnosticVirtualTextWarn = { fg = solarized.warning }, -- Virtual text "Warning"
        DiagnosticUnderlineWarn = { style = "undercurl", sp = solarized.warning }, -- used to underline "Warning" diagnostics.
        DiagnosticInfo = { fg = solarized.information }, -- used for "Information" diagnostic virtual text
        DiagnosticSignInfo = { fg = solarized.information }, -- used for "Information" diagnostic signs in sign column
        DiagnosticFloatingInfo = { fg = solarized.information }, -- used for "Information" diagnostic messages in the diagnostics float
        DiagnosticVirtualTextInfo = { fg = solarized.information }, -- Virtual text "Information"
        DiagnosticUnderlineInfo = { style = "undercurl", sp = solarized.information }, -- used to underline "Information" diagnostics.
        DiagnosticHint = { fg = solarized.hint }, -- used for "Hint" diagnostic virtual text
        DiagnosticSignHint = { fg = solarized.hint }, -- used for "Hint" diagnostic signs in sign column
        DiagnosticFloatingHint = { fg = solarized.hint }, -- used for "Hint" diagnostic messages in the diagnostics float
        DiagnosticVirtualTextHint = { fg = solarized.hint }, -- Virtual text "Hint"
        DiagnosticUnderlineHint = { style = "undercurl", sp = solarized.hint }, -- used to underline "Hint" diagnostics.
    }

    editor.Normal = { fg = solarized.fg, bg = solarized.bg } -- normal text and background color
    editor.SignColumn = { fg = solarized.fg, bg = solarized.bg }
    editor.VertSplit = { fg = solarized.border }

    return editor
end

theme.loadTerminal = function()
    vim.g.terminal_color_0 = solarized.black
    vim.g.terminal_color_1 = solarized.red
    vim.g.terminal_color_2 = solarized.green
    vim.g.terminal_color_3 = solarized.yellow
    vim.g.terminal_color_4 = solarized.blue
    vim.g.terminal_color_5 = solarized.purple
    vim.g.terminal_color_6 = solarized.cyan
    vim.g.terminal_color_7 = solarized.white
    vim.g.terminal_color_8 = solarized.gray
    vim.g.terminal_color_9 = solarized.red
    vim.g.terminal_color_10 = solarized.green
    vim.g.terminal_color_11 = solarized.yellow
    vim.g.terminal_color_12 = solarized.blue
    vim.g.terminal_color_13 = solarized.purple
    vim.g.terminal_color_14 = solarized.cyan
    vim.g.terminal_color_15 = solarized.white
end

theme.loadTreeSitter = function()
    local treesitter = {
        ["@type.qualifier"] = { fg = solarized.orange },
        ["@constructor"] = { fg = solarized.blue },
        ["@conditional.ternary"] = { fg = solarized.fg },
        ["@annotation"] = { fg = solarized.yellow },
        ["@attribute"] = { fg = solarized.violet },
        ["@boolean"] = { fg = solarized.violet },
        ["@preproc"] = { fg = solarized.violet },
        ["@character"] = { fg = solarized.yellow },
        ["@conditional"] = { fg = solarized.orange },
        ["@constant"] = { fg = solarized.blue },
        ["@constant.builtin"] = { fg = solarized.green },
        ["@constant.macro"] = { fg = solarized.violet },
        ["@constant.ructor"] = { fg = solarized.yellow },
        ["@emphasis"] = { fg = solarized.yellow },
        ["@error"] = { style = "undercurl", sp = solarized.error },
        ["@exception"] = { fg = solarized.orange },
        ["@field"] = { fg = solarized.cyan },
        ["@float"] = { fg = solarized.red },
        ["@function"] = { fg = solarized.blue },
        ["@function.builtin"] = { fg = solarized.blue },
        ["@function.macro"] = { fg = solarized.violet },
        ["@include"] = { fg = solarized.violet },
        ["@keyword"] = { fg = solarized.orange },
        ["@keyword.function"] = { fg = solarized.blue },
        ["@keyword.operator"] = { fg = solarized.orange },
        ["@label"] = { fg = solarized.orange },
        ["@literal"] = { fg = solarized.yellow },
        ["@method"] = { fg = solarized.blue },
        ["@namespace"] = { fg = solarized.green },
        ["@number"] = { fg = solarized.red },
        ["@operator"] = { fg = solarized.fg },
        ["@parameter"] = { fg = solarized.blue },
        ["@parameter.reference"] = { fg = solarized.fg },
        ["@property"] = { fg = solarized.cyan },
        ["@punctuation.bracket"] = { fg = solarized.fg },
        ["@punctuation.delimiter"] = { fg = solarized.fg },
        ["@punctuation.special"] = { fg = solarized.fg },
        ["@repeat"] = { fg = solarized.orange },
        ["@string"] = { fg = solarized.yellow },
        ["@string.escape"] = { fg = solarized.yellow },
        ["@string.regex"] = { fg = solarized.yellow },
        ["@strong"] = { fg = solarized.yellow },
        ["@structure"] = { fg = solarized.yellow },
        ["@tag"] = { fg = solarized.yellow },
        ["@tag.delimiter"] = { fg = solarized.yellow },
        ["@text"] = { fg = solarized.yellow },
        ["@title"] = { fg = solarized.yellow },
        ["@type"] = { fg = solarized.magenta },
        ["@type.builtin"] = { fg = solarized.orange },
        ["@underline"] = { fg = solarized.yellow },
        ["@uri"] = { fg = solarized.yellow },
        ["@variable"] = { fg = solarized.blue },
        ["@variable.builtin"] = { fg = solarized.orange },
    }
    return treesitter
end

theme.loadLSP = function()
    local lsp = {
        LspDiagnosticsDefaultError = { fg = solarized.error }, -- used for "Error" diagnostic virtual text
        LspDiagnosticsSignError = { fg = solarized.error }, -- used for "Error" diagnostic signs in sign column
        LspDiagnosticsFloatingError = { fg = solarized.error }, -- used for "Error" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextError = { fg = solarized.error }, -- Virtual text "Error"
        LspDiagnosticsUnderlineError = { style = "undercurl", sp = solarized.error }, -- used to underline "Error" diagnostics.
        LspDiagnosticsDefaultWarning = { fg = solarized.warning }, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsSignWarning = { fg = solarized.warning }, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsFloatingWarning = { fg = solarized.warning }, -- used for "Warning" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextWarning = { fg = solarized.warning }, -- Virtual text "Warning"
        LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = solarized.warning }, -- used to underline "Warning" diagnostics.
        LspDiagnosticsDefaultInformation = { fg = solarized.information }, -- used for "Information" diagnostic virtual text
        LspDiagnosticsSignInformation = { fg = solarized.information }, -- used for "Information" diagnostic signs in sign column
        LspDiagnosticsFloatingInformation = { fg = solarized.information }, -- used for "Information" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextInformation = { fg = solarized.information }, -- Virtual text "Information"
        LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = solarized.information }, -- used to underline "Information" diagnostics.
        LspDiagnosticsDefaultHint = { fg = solarized.hint }, -- used for "Hint" diagnostic virtual text
        LspDiagnosticsSignHint = { fg = solarized.hint }, -- used for "Hint" diagnostic signs in sign column
        LspDiagnosticsFloatingHint = { fg = solarized.hint }, -- used for "Hint" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextHint = { fg = solarized.hint }, -- Virtual text "Hint"
        LspDiagnosticsUnderlineHint = { style = "undercurl", sp = solarized.hint }, -- used to underline "Hint" diagnostics.
        LspReferenceText = { fg = solarized.accent, bg = solarized.highlight }, -- used for highlighting "text" references
        LspReferenceRead = { fg = solarized.accent, bg = solarized.highlight }, -- used for highlighting "read" references
        LspReferenceWrite = { fg = solarized.accent, bg = solarized.highlight }, -- used for highlighting "write" references
    }

    return lsp
end

theme.loadPlugins = function()
    local plugins = {
        -- Alpha
        AlphaHeader = { fg = solarized.cyan },
        AlphaFooter = { fg = solarized.magenta },
        AlphaShortcut = { fg = solarized.green },
        AlphaButtons = { fg = solarized.blue },
        NotifyERRORBorder = { fg = solarized.error },
        NotifyWARNBorder = { fg = solarized.warning },
        NotifyINFOBorder = { fg = solarized.green },
        NotifyDEBUGBorder = { fg = solarized.green },
        NotifyTRACEBorder = { fg = solarized.green },
        NotifyERRORTitle = { fg = solarized.error },
        NotifyWARNTitle = { fg = solarized.warning },
        NotifyINFOTitle = { fg = solarized.green },
        NotifyDEBUGTitle = { fg = solarized.green },
        NotifyTRACETitle = { fg = solarized.green },
        NotifyERRORIcon = { fg = solarized.error },
        NotifyWARNIcon = { fg = solarized.warning },
        NotifyINFOIcon = { fg = solarized.green },
        NotifyDEBUGIcon = { fg = solarized.green },
        NotifyTRACEIcon = { fg = solarized.green },
        -- LspTrouble
        LspTroubleText = { fg = solarized.text },
        LspTroubleCount = { fg = solarized.purple, bg = solarized.active },
        LspTroubleNormal = { fg = solarized.fg, bg = solarized.sidebar },
        -- Diff
        diffAdded = { fg = solarized.green },
        diffRemoved = { fg = solarized.red },
        diffChanged = { fg = solarized.yellow },
        diffOldFile = { fg = solarized.yellow },
        diffNewFile = { fg = solarized.orange },
        diffFile = { fg = solarized.blue },
        diffLine = { fg = solarized.comments },
        diffIndexLine = { fg = solarized.purple },
        -- Neogit
        NeogitBranch = { fg = solarized.paleblue },
        NeogitRemote = { fg = solarized.purple },
        NeogitHunkHeader = { fg = solarized.fg, bg = solarized.highlight },
        NeogitHunkHeaderHighlight = { fg = solarized.blue, bg = solarized.contrast },
        NeogitDiffContextHighlight = { fg = solarized.text, bg = solarized.contrast },
        NeogitDiffDeleteHighlight = { fg = solarized.red },
        NeogitDiffAddHighlight = { fg = solarized.green },
        -- GitGutter
        GitGutterAdd = { fg = solarized.green }, -- diff mode: Added line |diff.txt|
        GitGutterChange = { fg = solarized.yellow }, -- diff mode: Changed line |diff.txt|
        GitGutterDelete = { fg = solarized.red }, -- diff mode: Deleted line |diff.txt|
        -- GitSigns
        GitSignsAdd = { fg = solarized.green }, -- diff mode: Added line |diff.txt|
        GitSignsAddNr = { fg = solarized.green }, -- diff mode: Added line |diff.txt|
        GitSignsAddLn = { fg = solarized.green }, -- diff mode: Added line |diff.txt|
        GitSignsChange = { fg = solarized.yellow }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeNr = { fg = solarized.yellow }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeLn = { fg = solarized.yellow }, -- diff mode: Changed line |diff.txt|
        GitSignsDelete = { fg = solarized.red }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteNr = { fg = solarized.red }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteLn = { fg = solarized.red }, -- diff mode: Deleted line |diff.txt|
        GitSignsCurrentLineBlame = { fg = solarized.base01 },

        -- Telescope
        TelescopeSelectionCaret = { fg = solarized.blue },
        TelescopeSelection = { fg = solarized.blue, bg = solarized.selection },
        TelescopeMatching = { fg = solarized.magenta },
        TelescopeNormal = { fg = solarized.fg, bg = solarized.bg },
        -- TelescopeBorder = { fg = bg_alt, bg = bg },

        TelescopePreviewNormal = { bg = solarized.bg },
        TelescopePreviewTitle = { fg = solarized.cyan },
        TelescopePreviewBorder = { fg = solarized.cyan },

        TelescopePromptNormal = { fg = solarized.fg },
        TelescopePromptPrefix = { fg = solarized.green },
        TelescopePromptCounter = { fg = solarized.green },
        TelescopePromptTitle = { fg = solarized.green },
        TelescopePromptBorder = { fg = solarized.green },

        -- TelescopeResultsNormal = { bg = bg },
        TelescopeResultsTitle = { fg = solarized.blue },
        TelescopeResultsBorder = { fg = solarized.blue },

        -- NvimTree
        NvimTreeRootFolder = { fg = solarized.blue },
        NvimTreeGitDirty = { fg = solarized.fg },
        NvimTreeGitNew = { fg = solarized.green },
        NvimTreeImageFile = { fg = solarized.yellow },
        NvimTreeExecFile = { fg = solarized.cyan },
        NvimTreeSpecialFile = { fg = solarized.magenta },
        NvimTreeFolderName = { fg = solarized.blue },
        NvimTreeEmptyFolderName = { fg = solarized.disabled },
        NvimTreeFolderIcon = { fg = solarized.blue },
        NvimTreeIndentMarker = { fg = solarized.fg },
        LspDiagnosticsError = { fg = solarized.error },
        LspDiagnosticsWarning = { fg = solarized.warning },
        LspDiagnosticsInformation = { fg = solarized.information },
        LspDiagnosticsHint = { fg = solarized.hint },
        -- WhichKey
        WhichKey = { fg = solarized.green },
        WhichKeyGroup = { fg = solarized.cyan },
        WhichKeyDesc = { fg = solarized.blue },
        WWhichKeyBorder = { fg = solarized.base01 },
        WhichKeySeparator = { fg = solarized.base01 },
        WhichKeyFloat = { bg = solarized.base02 },

        -- LspSaga
        DiagnosticError = { fg = solarized.error },
        DiagnosticWarning = { fg = solarized.warning },
        DiagnosticInformation = { fg = solarized.information },
        DiagnosticHint = { fg = solarized.hint },
        DiagnosticTruncateLine = { fg = solarized.fg },
        LspFloatWinNormal = { bg = solarized.contrast },
        LspFloatWinBorder = { fg = solarized.purple },
        LspSagaBorderTitle = { fg = solarized.cyan },
        LspSagaHoverBorder = { fg = solarized.paleblue },
        LspSagaRenameBorder = { fg = solarized.green },

        LspSagaDefPreviewBorder = { fg = solarized.green },
        LspSagaCodeActionBorder = { fg = solarized.blue },
        LspSagaFinderSelection = { fg = solarized.green },
        LspSagaCodeActionTitle = { fg = solarized.paleblue },
        LspSagaCodeActionContent = { fg = solarized.purple },
        LspSagaSignatureHelpBorder = { fg = solarized.pink },
        ReferencesCount = { fg = solarized.purple },
        DefinitionCount = { fg = solarized.purple },
        DefinitionIcon = { fg = solarized.blue },
        ReferencesIcon = { fg = solarized.blue },
        TargetWord = { fg = solarized.cyan },
        -- BufferLine
        BufferLineIndicatorSelected = { fg = solarized.accent },
        BufferLineFill = { bg = solarized.bg_alt },
        -- Hop
        HopNextKey = { fg = solarized.magenta },
        HopNextKey1 = { fg = solarized.green },
        HopNextKey2 = { fg = solarized.cyan },
        -- Indent Blankline
        IndentBlanklineChar = { fg = solarized.base02 },
        IndentBlanklineContextChar = { fg = solarized.base01 },

        -- Noice
        NoiceCursor = { sytle = "reverse" },

        -- Nvim dap
        DapBreakpoint = { fg = solarized.magenta },
        DapStopped = { fg = solarized.green },
        DapUIVariable = { fg = solarized.blue },
        DapUIType = { fg = solarized.magenta },
        DapUIValue = { fg = solarized.cyan },
        DapUIFrameName = { fg = solarized.blue },
        DapUIThread = { fg = solarized.yellow },
        DapUIWatchesValue = { fg = solarized.green },
        DapUIBreakpointsInfo = { fg = solarized.magenta },
        DapUIBreakpointsCurrentLine = { fg = solarized.green },
        DapUIWatchesEmpty = { fg = solarized.comments },
        DapUIWatchesError = { fg = solarized.red },
        DapUIBreakpointsDisabledLine = { fg = solarized.yellow },
        DapUISource = { fg = solarized.violet },
        DapUIBreakpointsPath = { fg = solarized.violet },
        DapUIScope = { fg = solarized.fg },
        DapUILineNumber = { fg = solarized.red },
        DapUIBreakpointsLine = { fg = solarized.red },
        DapUIFloatBorder = { fg = solarized.comments },
        DapUIStoppedThread = { fg = solarized.yellow },
        DapUIDecoration = { fg = solarized.fg },
        DapUIModifiedValue = { fg = solarized.green },
        DapUIWatchesHeader = {},
        DapUIWatchesFrame = {},

        -- Diffview

    }

    -- Options:

    plugins.NvimTreeNormal = { fg = solarized.fg, bg = solarized.none }

    return plugins
end

return theme
