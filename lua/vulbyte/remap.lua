local printLoadingAndLoaded = vim.g.printLoadingAndLoaded;

if (printLoadingAndLoaded == true) then print('LOADING: ./nvim/lua/vulbyte/remap.lua') end

vim.g.mapleader = " "                         -- set leader to be spacebar
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex) -- quick open finder

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")  -- these are used to shift
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")  -- hole lines up and down

vim.keymap.set("n", "<C-d>", "<C-d>zz")       -- these keep your cursor in
vim.keymap.set("n", "<C-u>", "<C-u>zz")       -- the center on page jumps

vim.keymap.set('n', 'n', 'nzzzv')             -- these keep cursor in center when
vim.keymap.set('n', 'N', 'Nzzzv')             -- searching around

vim.keymap.set('x', '<leader>p', "\"_dp")     -- keeps copied thing in buffer

vim.keymap.set("v", '<leader>y', "\"+y")      -- yanks to system clipboard

--below allows you to swap projects via tmux (diff
vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>')

--add quick fix list from @28:39?
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")     -- jump to next error in quickfix, then center.
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")     -- jump to prev error in quickfix, then center.
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz") -- jump to next location then center.
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz") -- jump to prev location then center.

--gD -> gd in new tab
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)

vim.keymap.set('n', 'gD', function()
    local org_path = vim.api.nvim_buf_get_name(0)
    --gd
    vim.api.nvim_command("normal gd")
    --wait for LSPS response
    vim.wait(100, function() end)

    local new_path = vim.api.nvim_buf_get_name(0)
    if not (org_path == new_path) then
        -- create new tab for the og file
        vim.api.nvim_command("0tabnew %")
        --restore cursor position
        vim.api.nvim_command("b " .. org_path)
        vim.api.nvim_command('normal! `"')
        --switch to the og tab
        vim.api.nvim_command("normal! gt")
    end
end, bufopts)

--gF -> gf in new tab
vim.keymap.set('n', 'gf', vim.lsp.buf.definition, bufopts)

vim.keymap.set('n', 'gF', function()
    local org_path = vim.api.nvim_buf_get_name(0)
    --gd
    vim.api.nvim_command("normal gf")
    --wait for LSPS response
    vim.wait(100, function() end)

    local new_path = vim.api.nvim_buf_get_name(0)
    if not (org_path == new_path) then
        -- create new tab for the og file
        vim.api.nvim_command("0tabnew %")
        --restore cursor position
        vim.api.nvim_command("b " .. org_path)
        vim.api.nvim_command('normal! `"')
        --switch to the og tab
        vim.api.nvim_command("normal! gt")
    end
end, bufopts)

--find and replace under cursor
vim.keymap.set(
    "n",
    "<leader>s",
    [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]
)                                       --replaces selected word with new word in whole document/file omg <3

vim.g.user_emmet_leader_key = ("<C-Y>") --sets emmet hotkey to <C-(var)>,

-- delete all marks
function DeleteAllMarks()                             --funciton for marks
    vim.cmd [[delmarks a-zA-Z0-9"'\?/<>&*();:~\-_=+]] --delte all marks
    print("all marks deleted")                        -- tell the user what they did
end

vim.keymap.set("n", "<leader>dma", ":lua DeleteAllMarks()<CR>")  -- delete all marks

function ClearTrailingWhiteSpaces()                              -- create callable funciton
    vim.keymap.set("n", "<leader>ctw", [[<cmd>%s/\s\+$//e<CR>]]) -- execute cmd
    print("cleaned up all detected white spaces")                -- inform user
end

vim.keymap.set("n", "<leader>ctw", ":lua ClearTrailingWhiteSpaces()<CR>") -- create keymap

function InsertCommentMarkers()
    local current_buf = vim.fn.bufnr('%')
    local lang = vim.api.nvim_buf_get_option(current_buf, 'filetype')

    local commentType = ""

    print("file type is:", lang)

    local commentTypes = {
        --{{{1
        custom = {
            lolcat = "BTW",
            lol = "BTW",
            lols = "BTW",
            css = { "/*", "*/" },
            html = { "<!--", "-->" },
            xml = { "<!--", "-->" },
        },
        doubleForwardSlash = { -- sorta alphabeticaly
            "c",               -- c
            "c++",             -- c++
            "cpp",
            "c#",              -- c sharp
            "cs",
            "objective c",     -- objective c
            "m",
            "h",
            "dart", --dart
            "f#",   --f#
            "fs",
            "fsharp",
            "gdscript",   -- GDScript
            "go",         -- golang
            "groovy",     --groovy
            "java",       -- java
            "javascript", -- javascript
            "js",
            "jsx",
            "kotlin", -- kotlin
            "kt",
            "kts",
            "kexe",
            "klib",
            "ruby",       -- Ruby
            "rb",
            "racket",     -- Racket
            "rkt",
            "rust",       -- rust
            "rs",
            "sc",         -- scala
            "scala",
            "swift",      -- Swift
            "typescript", -- typescript
            "ts",
            "tsx",
            "vhdl", --vhdl
            "zig",  --zig
            "zir",
        },
        exclamation = {
            "fortran", -- fortran
        },
        astarisk = {
            "cobol", --cobol
            "clb",
            "cob",
            "cpy",
        },
        hash = {
            "bash",   --bash
            "elixir", -- Elixir
            "exs",
            "ex",
            "julia", --julia
            "j",
            "jl",
            "mojo", --mojo
            "🔥",
            "nim",  --nim
            "nims",
            "nimble",
            "powershell", --powershell
            "ps1",
            "python",     --python
            "py",
            "r",          --r
            "shell",      --shell
            "sh",
            "perl",       --perl
            "pl",
            "zsh",        -- zsh
        },
        doubleDash = {
            "ada",     --ada
            "lua",     --lua
            "sql",     --sql
            "haskell", --haskell
            "hs",
            "lhs",
        },
        hashBang = {
            "perl6",  -- Perl 6
            "pl",
            "bash",   -- Bash (shebang)
            "sh",
            "python", -- Python (shebang)
            "pt",
            "ruby",   -- Ruby (shebang)
        },
        percent = {
            "erlang", --erlang
            "erl",
            "hrl",
            "matlab", -- matlab
            "mat",
            "matfile",
            "m",
            "prolog", -- prolog
            "pl",
            "pro",
            "p",
            "turing", --turing
            "t",
            "tu",
            "tur",
        },
        colon = {
            "asm",  --assembly
            "lisp", --lisp
            "lsp",
            "el",
            "scheme", --scheme
            "scm",
            "ss",
        },
        doubleSemiColon = {
            "clojure", -- clojure
            "clj",
            "cljs",
            "cljr",
            "cljc",
            "edn",
        },
        --}}}1
    }


    for group, markers in pairs(commentTypes) do
        for _, marker in ipairs(markers) do
            if lang == marker then
                -- Perform some action based on the group
                print("Match found in group:", group)
                -- Add your code here based on the group
                if group == "custom" then -- FIX ME AT SOME POINT YOU DOLT
                    --god help me
                    commentType = "custom"
                end
                if group == "astarisk" then
                    commentType = "*"
                end
                if group == "colon" then
                    commentType = ":"
                end
                if group == "doubleDash" then
                    commentType = "--"
                end
                if group == "doubleForwardSlash" then
                    commentType = "//"
                end
                if group == "doubleSemiColon" then
                    commentType = "::"
                end
                if group == "exlamation" then
                    commentType = "!"
                end
                if group == " hash" then
                    commentType = "#"
                end
                if group == "percent" then
                    commentType = "%"
                end
            end
        end
    end

    --search
    local searchQuery = "/\v[({<]" -- find closing backet
    --move left
    local moveLeft = "h"
    --create closing comment
    local closing
    comment = "}}}"
    --move right
    local moveRight = "l"
    --%
    local otherBracket = "%"
    --right again
    moveRight = "l"
    --create opening comment
    local opening = "{{{"
    print(commentType)
end

vim.keymap.set("n", "<leader>cfm", ":lua InsertCommentMarkers()<CR>"); --quick marker hotkey

if (printLoadingAndLoaded == true) then print('LOADED: ./nvim/luavulbyte/remap.lua') end

--  test (
--      statement'expression'
--      statement2(expression)
--      statement3{expression}
--  end
--  }}}
--  )
