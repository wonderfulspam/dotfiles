function fish_greeting
    fortune | xargs -0 (printf "cowsay\ncowthink" | shuf -n 1) | lolcat -D -b 2.0 -f 0.3
end
