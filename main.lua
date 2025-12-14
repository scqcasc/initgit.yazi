return {
    entry = function()
        local output = Command("git"):arg("status"):stderr(Command.PIPED):output()
        if output.stderr ~= "" then
            local output, err_code = Command("git"):arg("init"):arg("."):stderr(Command.PIPED):output()
            if err_code ~= nil then
                ya.notify({
                    title = "Failed to initialize git repo",
                    content = "Status: " .. err_code,
                    level = "error",
                    timeout = 5,
                })
            else
                ya.notify({
                    title = "Git Init",
                    content = "Repo initialized" .. output.stderr,
                    level = "info",
                    timeout = 5,
                })
            end
        end
    end
}
