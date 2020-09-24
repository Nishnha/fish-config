function remind
    set target (get_current_window_id)
    switch (count $argv)
        case 0
            echo "Usage: remind <command>"
        case 1
            eval $argv[1]
            i3-nagbar -m "[$status] $argv" -b "Go" "i3-msg [con_id=\"$target\"] focus" >/dev/null 2>&1 &
            echo -e "\a"
        case '*'
            eval $argv[1] $argv[2..-1]
            i3-nagbar -m "[$status] $argv" -b "Go" "i3-msg [con_id=\"$target\"] focus" >/dev/null 2>&1 &
            echo -e "\a"
    end
end

function get_current_window_id
    i3-msg -t get_tree \
            | grep -o '{[^{]*"focused":true[^}]*}' \
            | sed 's/.*"id":\([^,]*\),.*/\1/'
end
