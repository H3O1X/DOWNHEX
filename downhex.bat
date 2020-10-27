@echo off
title ---Login Dulu!---
:nama
color 0a
cls
echo.
set/p name=Masukkan Nama Kamu : 
goto Passw

:Passw
cls
color 0e
echo Sedang login...(0)
echo Sedang login...(20)
echo Sedang login...(40)
echo Sedang login...(60)
echo Sedang login...(80)
echo Sedang login...(100)
echo Login Selesai!
pause.
goto Login

:Login
color 0a
cls
title Selamat Datang %name%!
echo Selamat datang %name%! Kami di sini menunggu anda untuk bekerja kembali
echo 1) Kirim tugas
echo 2) Bantuan
echo 3) Tentang
echo 4) Keluar
echo ----------------------Jangan Lupa Senyum!------------------------------
set /p nomor=Pilih : 
if %nomor% == 1 goto Tugas
if %nomor% == 2 goto Help
if %nomor% == 3 goto About
if %nomor% == 4 goto Exit

:Tugas
color 0b
title ---Tugas---
echo Tersedia :
echo 1) Matikan daya
echo 2) Alamat ip
echo 3) Pesan pop-up
echo 4) Hack Wifi
echo 5) Memulai program lain
echo 6) DDoS Attack
echo 7) Tes ping server
echo 9) Keluar
echo Alat ini masih dalam pengembangan
echo ------------------------------------------------
set /p tugas=Masukkan Tugas : 
if %tugas% == 1 goto Daya
if %tugas% == 2 goto IP
if %tugas% == 3 goto Pesan
if %tugas% == 4 goto Wifi
if %tugas% == 5 goto Pro
if %tugas% == 6 goto DDoS
if %tugas% == 7 goto Pingpong
if %tugas% == 8 goto Exit

:Daya
color 0c
cls
echo Matikan Komputer Ini (y/n)
set /p daya=
if %daya% == y shutdown -s -c "Laptop Akan Mati Sebentar Lagi!"
if %daya% == n goto Login
goto Login

:IP
color 0a
cls
title ---IP Finder---
echo Alat ini adalah alat untuk mencari Alamat IP yang berada pada server lokal atau server lan
echo Jalankan (y/n)
set /p ip=
if %ip% == y goto IPP
if %ip% == n echo Loading...
pause
goto Login

:IPP
color 9
cls
title Pencarian Alamat IP Lokal
arp -a
pause
goto Login

:Pesan
color 0e
cls
title ---Pesan Pop-up---
set /p pesan=Masukkan pesan pop-up: 
msg * %pesan%
goto Login

:Wifi
color 2
cls
title ---Hack Wifi---
echo Deskripsi :
echo Alat ini hanya bisa digunakan apabila perangkat anda pernah terhubung dengan wifi target!
echo ---------------------------------------------------------------
pause
goto Wifix

:Wifix
color 0a
title ---Hack Wifi By Resta---
netsh wlan show profiles
set /p namas=Masukkan nama wifi (berlaku tanpa spasi) :
netsh wlan show profiles %namas% key=clear
echo Password berada pada key content!
pause
goto Login

:Pro
color 6
cls
title ---Menjalankan Program Lain---
echo Alat ini akan menjalankan program lain yang ada di folder System32
echo ------------------------------------------------------------------
set /p pro=Masukkan nama program : 
start %pro%
goto Login

:DDoS
cls
title DDoS Attack
cls
echo.
echo DDoS Attack
echo.
set /p x=Server-Target:
ping %x%
echo.
@ping.exe 127.0.0.1 -n 5 -w 1000 > nul
goto NextDDoS

:NextDDoS
echo.
echo.
echo.
set /p m=ip Host:
echo.
set /p n=Packet Size:
echo.
goto DDDD

:DDDD
color 0c
echo Attacking Server %m%
ping %m% -i %n% -t >nul
goto DDDD 

:Help
color 0f
echo Anda tinggal mengikuti arahan sesuai dengan alat yang anda pilih
echo ----------------------------------------------------------------------
pause
goto Login

:About
color 6
title Tentang
echo Tentang alat :
echo Dibuat oleh Restananda Wahyu Namaprila
echo Facebook                   : Restananda
echo Instagram                  : @restanandax
echo Kunjungi situsnya          : http://the-resta.blogspot.com
echo Email                      : restananda0905@gmail.com
echo WhatsApp                   : 081390947252
echo Dibuat pada tanggal 01 Desember 2019 18:22
echo Diupdate pada tanggal 19 Oktober 2020 19:35
echo Copyrights (c) Resta Project
echo -----------------------------------------------------------------
pause
goto Login

:Pingpong
Color 0d
title Ping Server Tools
cls
echo Masukkan server yang ingin dicoba kemudian lihat hasilnya
echo.
echo.
set /p ping=Server (contoh google.com):
ping %ping%
pause
goto Login

:Exit
color 0c
cls
Echo Apakah anda mau keluar (y/n)
set /p exit=
if %exit% == y exit
if %exit% == n goto Login