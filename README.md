My Websdr config files


It can tune directly to freq, no progfreq neeeded, just start the modified driver and you are on your way.

To use converters:

In order to use procfreq in the config, you must first load the rsp_tcp, then start websdr, unload rsp_tcp and load it again.

This is a known bug, as you can see in my start script, it does exactly that. 

I use screen as deamon function, so if it fails, install screen first.

I also nicked things and coding from other websdr, so feel free to nick mine too, no problem at all.

Hopefully this helps others to either use a converter or do direct-sampling. I did document some in the configs.

My start "script" is found in dist11, you may need to modify it due to the directories used by me.

I updated the files as all rtl-dongles have been replaced with SDRplay modules.


Best regards,

Bas - ON5HB


The way it looks: http://www.heppen.be:8091
