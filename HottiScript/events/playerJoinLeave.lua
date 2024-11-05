-- Add every player first to the list
players.on_join(function(pid)
    if pid ~= players.user() and ({"DewBoostsYou"}):includes(players.get_name(pid)) then
        players.add_detection(pid, "Diego's Smelly Ass Detected <3")
    end

    if pid ~= players.user() and ({"h_jasq", "h__jasq"}):includes(players.get_name(pid)) then
        players.add_detection(pid, "Zuzia's Smelly Ass Detected <3")
    end

    if players.exists(pid) then
        local playerData = PlayerManager:addPlayer(pid)
    end

end)

players.on_leave(function(pid)
    if not players.exists(pid) then
        PlayerManager:removePlayer(pid)
    end
end)

players.dispatch_on_join()
