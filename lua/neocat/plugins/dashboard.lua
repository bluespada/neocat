return {
    { 
        'nvimdev/dashboard-nvim',
        config = function()
            local anya = {
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢲⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠄⠂⢉⠤⠐⠋⠈⠡⡈⠉⠐⠠⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⢀⡀⢠⣤⠔⠁⢀⠀⠀⠀⠀⠀⠀⠀⠈⢢⠀⠀⠈⠱⡤⣤⠄⣀⠀⠀⠀⠀⠀",
                "⠀⠀⠰⠁⠀⣰⣿⠃⠀⢠⠃⢸⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠈⢞⣦⡀⠈⡇⠀⠀⠀",
                "⠀⠀⠀⢇⣠⡿⠁⠀⢀⡃⠀⣈⠀⠀⠀⠀⢰⡀⠀⠀⠀⠀⢢⠰⠀⠀⢺⣧⢰⠀⠀⠀⠀",
                "⠀⠀⠀⠈⣿⠁⡘⠀⡌⡇⠀⡿⠸⠀⠀⠀⠈⡕⡄⠀⠐⡀⠈⠀⢃⠀⠀⠾⠇⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠇⡇⠃⢠⠀⠶⡀⡇⢃⠡⡀⠀⠀⠡⠈⢂⡀⢁⠀⡁⠸⠀⡆⠘⡀⠀⠀⠀⠀",
                "⠀⠀⠀⠸⠀⢸⠀⠘⡜⠀⣑⢴⣀⠑⠯⡂⠄⣀⣣⢀⣈⢺⡜⢣⠀⡆⡇⠀⢣⠀⠀⠀⠀",
                "⠀⠀⠀⠇⠀⢸⠀⡗⣰⡿⡻⠿⡳⡅⠀⠀⠀⠀⠈⡵⠿⠿⡻⣷⡡⡇⡇⠀⢸⣇⠀⠀⠀",
                "⠀⠀⢰⠀⠀⡆⡄⣧⡏⠸⢠⢲⢸⠁⠀⠀⠀⠀⠐⢙⢰⠂⢡⠘⣇⡇⠃⠀⠀⢹⡄⠀⠀",
                "⠀⠀⠟⠀⠀⢰⢁⡇⠇⠰⣀⢁⡜⠀⠀⠀⠀⠀⠀⠘⣀⣁⠌⠀⠃⠰⠀⠀⠀⠈⠰⠀⠀",
                "⠀⡘⠀⠀⠀⠀⢊⣤⠀⠀⠤⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠤⠄⠀⢸⠃⠀⠀⠀⠀⠀⠃⠀",
                "⢠⠁⢀⠀⠀⠀⠈⢿⡀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⢀⠏⠀⠀⠀⠀⠀⠀⠸⠀",
                "⠘⠸⠘⡀⠀⠀⠀⠀⢣⠀⠀⠀⠀⠀⠀⠁⠀⠃⠀⠀⠀⠀⢀⠎⠀⠀⠀⠀⠀⢠⠀⠀⡇",
                "⠀⠇⢆⢃⠀⠀⠀⠀⠀⡏⢲⢤⢀⡀⠀⠀⠀⠀⠀⢀⣠⠄⡚⠀⠀⠀⠀⠀⠀⣾⠀⠀⠀",
                "⢰⠈⢌⢎⢆⠀⠀⠀⠀⠁⣌⠆⡰⡁⠉⠉⠀⠉⠁⡱⡘⡼⠇⠀⠀⠀⠀⢀⢬⠃⢠⠀⡆",
                "⠀⢢⠀⠑⢵⣧⡀⠀⠀⡿⠳⠂⠉⠀⠀⠀⠀⠀⠀⠀⠁⢺⡀⠀⠀⢀⢠⣮⠃⢀⠆⡰⠀",
                "⠀⠀⠑⠄⣀⠙⡭⠢⢀⡀⠀⠁⠄⣀⣀⠀⢀⣀⣀⣀⡠⠂⢃⡀⠔⠱⡞⢁⠄⣁⠔⠁⠀",
                "⠀⠀⠀⠀⠀⢠⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⠉⠁⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀",
                "",
                "",
            }

            local quote = {
                "You call that code? That’s just garbage with syntax.",
                "You’re not a programmer, you’re just a bug magnet.",
                "Your code is a dumpster fire. Fix it, or quit.",
                "You’re too lazy to learn, but you love to complain. Pathetic.",
                "Stop writing code, you’re just wasting everyone’s time.",
                "Your best practice? Copy-paste until it works. Idiot.",
                "You’re the reason we have stackoverflow. Just quit already.",
                "Your code doesn’t work, and neither do you.",
                "The only thing you’re good at is breaking things.",
                "Your code’s a joke, and you're the punchline.",
                "You call that code? I call it a cry for help.",
                "Your code is as broken as your brain. Fix both.",
                "You’re not a programmer, you’re just an error waiting to happen.",
                "You should've quit before you even started. This ain't for you.",
                "Your code’s so bad, even Google can’t find a solution.",
                "Are you sure you’re a dev? Because this looks like a toddler’s first attempt.",
                "No one’s impressed, just delete that mess and start over.",
                "Your code is a virus. It’s infecting the whole project.",
                "If laziness was a crime, you’d be doing life in prison.",
                "You're like a virus. You spread ignorance, not solutions.",
                "No wonder your code’s always broken. It’s a reflection of your skills.",
                "You’re a walking 404 error. No solution, just problems.",
                "You couldn’t debug your way out of a paper bag.",
                "This isn’t coding, it’s dumpster diving.",
                "Your code is so ugly, even AI wouldn't touch it.",
            }

            local random_quote = function()
                if #quote == 0 then
                    return "" -- Return nil if quote is empty
                end
                math.randomseed(os.time()) -- Seed for randomness
                return quote[math.random(1, #quote)]
            end

            require'dashboard'.setup{
                config = {
                    header = anya,
                    footer = {
                    },
                    shortcut = {
                        {
                            desc = random_quote().." ✨",
                            group = "@motivation",
                            action = "",
                        },
                    },
                    packages = { enable = false }
                },
                hide = {
                    tabline,
                },
            }
        end
    },
}
