cat > ~/update_mpd.sh << 'EOF'
#!/data/data/com.termux/files/usr/bin/bash

cd ~/Mpd/MPD
ffmpeg -i "http://stream3.zecast.com:1935/star-live/sp20239/chunklist_w1096483107.m3u8" \
  -map 0 -f dash -seg_duration 6 -t 3600 Tamil.mpd

cd ~/Mpd
git add MPD/Tamil.mpd
git commit -m "Auto update Tamil.mpd"
git push origin main
EOF

chmod +x ~/update_mpd.sh
