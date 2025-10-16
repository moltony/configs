-- see also https://gist.github.com/moltony/dc67afa0714c3bffceeb0fff916df98d

local ov = mp.create_osd_overlay('ass-events')
ov.data = "{\\fs72}{\\an5}一時停止!!\n{\\fs16}{\\an5}Media file now is on pause."

mp.observe_property('pause', 'bool', function(_, paused)
    if paused then ov:update()
    else ov:remove() end
end)
