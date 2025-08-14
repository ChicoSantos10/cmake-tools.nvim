--- The cmake-tools plugin for neovim v0.7.0+.
-- This plugin is intended to support cmake integration in neovim.

local cmake_tools = require("cmake-tools")

---------------- Commands ------------------

--- CMake
vim.api.nvim_create_user_command(
    "CMakeGenerate",      -- name
    cmake_tools.generate, -- command
    {                     -- opts
        nargs = "*",
        bang = true,
        desc = "CMake configure",
    }
)

--- CMake clean
vim.api.nvim_create_user_command(
    "CMakeClean",      -- name
    cmake_tools.clean, -- command
    {                  -- opts
        nargs = 0,
        desc = "Clean CMake result",
    }
)

--- CMake build
vim.api.nvim_create_user_command(
    "CMakeBuild",      -- name
    cmake_tools.build, -- command
    {                  -- opts
        nargs = "*",
        bang = true,
        desc = "CMake build",
    }
)

--- CMake quick build
vim.api.nvim_create_user_command(
    "CMakeQuickBuild",       -- name
    cmake_tools.quick_build, -- command
    {                        -- opts
        nargs = "?",
        desc = "CMake quick build",
    }
)

--- CMake install
vim.api.nvim_create_user_command(
    "CMakeInstall",      -- name
    cmake_tools.install, -- command
    {                    -- opts
        nargs = "*",
        desc = "CMake install",
    }
)
--- CMake stop
vim.api.nvim_create_user_command(
    "CMakeStopExecutor",       -- name
    cmake_tools.stop_executor, -- command
    {                          -- opts
        desc = "CMake stop executor",
    }
)
vim.api.nvim_create_user_command(
    "CMakeStopRunner",       -- name
    cmake_tools.stop_runner, -- command
    {                        -- opts
        desc = "CMake stop runner",
    }
)

--- CMake close executor
vim.api.nvim_create_user_command(
    "CMakeCloseExecutor",       -- name
    cmake_tools.close_executor, -- command
    {                           -- opts
        desc = "Close CMake executor window",
    }
)

--- CMake close runner
vim.api.nvim_create_user_command(
    "CMakeCloseRunner",       -- name
    cmake_tools.close_runner, -- command
    {                         -- opts
        desc = "Close CMake runner window",
    }
)

--- CMake open executor
vim.api.nvim_create_user_command(
    "CMakeOpenExecutor",       -- name
    cmake_tools.open_executor, -- command
    {                          -- opts
        desc = "Open CMake executor window",
    }
)

--- CMake open runner
vim.api.nvim_create_user_command(
    "CMakeOpenRunner",       -- name
    cmake_tools.open_runner, -- command
    {                        -- opts
        desc = "Open CMake runner window",
    }
)

--- CMake open cache
vim.api.nvim_create_user_command(
    "CMakeOpenCache",       -- name
    cmake_tools.open_cache, -- command
    {                       -- opts
        desc = "Open CMakeCache.txt",
    }
)

--- CMake run
vim.api.nvim_create_user_command(
    "CMakeRun",      -- name
    cmake_tools.run, -- command
    {                -- opts
        nargs = "*",
        desc = "CMake run",
    }
)

--- CMake quick run
vim.api.nvim_create_user_command(
    "CMakeQuickRun",       -- name
    cmake_tools.quick_run, -- command
    {                      -- opts
        nargs = "*",
        desc = "CMake quick run",
    }
)

--- CMake run current file
vim.api.nvim_create_user_command(
    "CMakeRunCurrentFile",        -- name
    cmake_tools.run_current_file, -- command
    {                             -- opts
        nargs = "*",
        desc = "CMake run current file",
    }
)

--- CMake build current file
vim.api.nvim_create_user_command(
    "CMakeBuildCurrentFile",        -- name
    cmake_tools.build_current_file, -- command
    {                               -- opts
        nargs = "*",
        desc = "CMake build current file",
    }
)

--- CMake launch args
vim.api.nvim_create_user_command(
    "CMakeLaunchArgs",       -- name
    cmake_tools.launch_args, -- command
    {                        -- opts
        nargs = "*",
        desc = "CMake launch args",
    }
)

--- CMake select build type
vim.api.nvim_create_user_command(
    "CMakeSelectBuildType",        -- name
    cmake_tools.select_build_type, -- command
    {                              -- opts
        nargs = 0,
        desc = "CMake select build type",
    }
)

--- CMake select kit
vim.api.nvim_create_user_command(
    "CMakeSelectKit",       -- name
    cmake_tools.select_kit, -- command
    {                       -- opts
        nargs = 0,
        desc = "CMake select cmake kit",
    }
)

--- CMake select configure preset
vim.api.nvim_create_user_command(
    "CMakeSelectConfigurePreset",        -- name
    cmake_tools.select_configure_preset, -- command
    {                                    -- opts
        nargs = 0,
        desc = "CMake select cmake configure preset",
    }
)

--- CMake select build preset
vim.api.nvim_create_user_command(
    "CMakeSelectBuildPreset",        -- name
    cmake_tools.select_build_preset, -- command
    {                                -- opts
        nargs = 0,
        desc = "CMake select cmake kit",
    }
)

--- CMake select test preset
vim.api.nvim_create_user_command(
    "CMakeSelectTestPreset",        -- name
    cmake_tools.select_test_preset, -- command
    {                               -- opts
        nargs = 0,
        desc = "CMake select ctest preset",
    }
)

--- CMake select build target
vim.api.nvim_create_user_command(
    "CMakeSelectBuildTarget",        -- name
    cmake_tools.select_build_target, -- command
    {                                -- opts
        nargs = 0,
        desc = "CMake select build target",
    }
)

--- CMake select launch target
vim.api.nvim_create_user_command(
    "CMakeSelectLaunchTarget",        -- name
    cmake_tools.select_launch_target, -- command
    {                                 -- opts
        nargs = 0,
        desc = "CMake select launch target",
    }
)

--- CMake configure environment variables for launch target
vim.api.nvim_create_user_command(
    "CMakeTargetSettings",       -- name
    cmake_tools.target_settings, -- command
    {                            -- opts
        nargs = "*",
        desc = "configure target settings",
    }
)

--- CMake configure build environment variables
vim.api.nvim_create_user_command(
    "CMakeSettings",      -- name
    cmake_tools.settings, -- command
    {                     -- opts
        nargs = 0,
        desc = "configure base settings",
    }
)

--- CMake select cwd (source dir)
vim.api.nvim_create_user_command(
    "CMakeSelectCwd",       -- name
    cmake_tools.select_cwd, -- command
    {                       -- opts
        nargs = "?",
        desc = "CMake select cwd",
    }
)

--- CMake select build dir
vim.api.nvim_create_user_command(
    "CMakeSelectBuildDir",        -- name
    cmake_tools.select_build_dir, -- command
    {                             -- opts
        nargs = "?",
        desc = "CMake select build dir",
    }
)

--- CMake run tests
vim.api.nvim_create_user_command(
    "CMakeRunTest",       -- name
    cmake_tools.run_test, -- command
    {                     -- opts
        nargs = "*",
        desc = "CMake run test",
        complete = function(args, cmd, cursor)
            -- TODO: Not all args are present
            local possibleArgs = {
                "--preset",
                "--preset=",
                "-C",
                "--build-config",
                "--progress",
                "-V",
                "--verbose",
                "-VV",
                "--extra-verbose",
                "--debug",
                "--output_on_failure",
                "--stop_on_failure",
                "-F",
                "-j",
                "--parallel",
                "--resource-spec-file",
                "--test-load",
                "-Q",
                "--quiet",
                "-O",
                "--output-log",
                "--output-junit",
                "-N",
                "--show-only",
                "-N",
                "--show_only",
                "-L",
                "--label-regex",
                "-E",
                "--exclude-regex",
                "-LE",
                "--label-exclude",
                "--rerun-failed",
            }

            if args:match("^%-%-preset") then
                local prefix = "--preset="
                local preset_pattern = args:sub(#prefix + 1)

                local output = vim.fn.system("ctest --list-presets")

                if vim.v.shell_error ~= 0 then
                    return { output }
                end

                local presets = {}
                for line in output:gmatch([["%w*"]]) do
                    if line:match("^" .. vim.pesc(preset_pattern)) then
                        table.insert(presets, prefix .. line)
                    end
                end

                return presets
            end

            local matches = {}
            for _, arg in ipairs(possibleArgs) do
                if arg:match("^" .. vim.pesc(args)) then
                    table.insert(matches, arg)
                end
            end

            return matches
        end
    }
)
--- CMake quick start
vim.api.nvim_create_user_command(
    "CMakeQuickStart",                             -- name
    require("cmake-tools.quickstart").quick_start, -- command
    {                                              -- opts
        nargs = 0,
        desc = "CMake run quickstart",
    }
)
