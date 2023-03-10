const maxLength = 18 // To prevent long names from runing the hud

var app = new Vue({
    el: '#initapp',
    data: {
        serverName: "#DIMANA",
        server_logo: "https://cdn.discordapp.com/attachments/997544666801119302/1072160093744930878/gta_PNG15.png",
        player: 'G0ogle',
        player_fps: 90,
        playerpingofc: 11,
        ID: 2,
        discord: "https://discord.gg/SqrYEXaMnQ",
        website_link: "https://www.genesisys.com/",
        active_players: 0,
        player_job : "Unemployed",


        // ICONS 
        ID_ICON: "",
        PLAYERS_ICON: "",
        LOBBY_ICON: "",
        FPS_ICON: "",
        DISCORD_ICON: "",
        WEBSITE_ICON: "",


        elements: []
    },
    computed: {
        serverPlayers: function() {
            if(this.player.length > maxLength) {
                return this.player.substring(0, maxLength - 3) + ".."
            } else {
                return this.player
            }
        }
    }
})

const getEvent = (event, data = {}, cb = (() => {})) => {
    fetch(`https://${GetParentResourceName()}/${event}`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json; charset=UTF-8',
        },
        body: JSON.stringify(data)
    }).then(response => response.json()).then(response => {
        cb(response)
    })
}

function keepitUpdated() {
    getEvent("g0ogle_hud:HandInfo", {}, response => {
        Object.keys(response).forEach(key => {
            let value = response[key]

            if(key == "player_job") {
                if(value < 10) {
                    value = `${value}&nbsp;&nbsp;`
                } else if(value < 100) {
                    value = `${value}&nbsp;`
                }
            }
            app[key] = value
        })
    })
}

keepitUpdated()
setInterval(keepitUpdated, 1000)


window.addEventListener('message', function(event) {
    const data = event.data;

    if(data.action) {
        if(data.action == "hide_hud") {
            var x = document.getElementById("initapp");
            x.style.display = "none";
        } else if (data.action == "show_hud") {
            var x = document.getElementById("initapp");
            x.style.display = "block";
        }
    }
});

getEvent("ready")
