mv ALL_WSPR0.TXT ALL_WSPR0.TXT.tmp
nice -19 ./wspr0 Rx 0.474187 wspr-474-210505-1710.wav
rm wspr-474-210505-1710.wav
nice -19 ./wspr0 Rx 0.032594 wspr-32-210505-1710.wav
rm wspr-32-210505-1710.wav
nice -19 ./wspr0 Rx 0.110594 wspr-110-210505-1710.wav
rm wspr-110-210505-1710.wav
nice -19 ./wspr0 Rx 0.038594 wspr-38-210505-1710.wav
rm wspr-38-210505-1710.wav
nice -19 ./wspr0 Rx 0.176594 wspr-176-210505-1710.wav
rm wspr-176-210505-1710.wav
cat ALL_WSPR0.TXT >> ALL_WSPR0.TXT.tmp
mv ALL_WSPR0.TXT wspr-new.txt
mv ALL_WSPR0.TXT.tmp ALL_WSPR0.TXT
./wspr_upload.py
