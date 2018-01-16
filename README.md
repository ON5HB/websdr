My Websdr config files

In here you find my used drivers, we patched the rtl_tcp to be able to use -D 2 for direct sampling.
It can tune directly to freq, no progfreq neeeded, just start the modified driver and you are on your way.

To use converters:
In order to use procfreq in the config, you must first load the rtl_tcp, then start websdr, unload rtl_sdr and load it again. This is a known bug, as you can see in my start script, it does exactly that. I use screen as deamon function, so if it fails, install screen first.

I also nicked things and coding from other websdr, so feel free to nick mine too, no problem at all.

Hopefully this helps others to either use a converter or do direct-sampling. I did document some in the configs.

My start "script" is found in dist11, you may need to modify it due to the directories used by me.


Best regards,

Bas - ON5HB
