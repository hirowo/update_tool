:: (Shift-JIS)
:: .bin��ESP32�ɃA�b�v���[�h����
:: PORT�𑕒u��usb�V���A���ɍ��킹�Đݒ肷�邱��
:: �{�[���[�g���K�v�Ȃ�
::
set PORT=COM42
set FILENAME=Kagabit01

.\esptool.exe --port %PORT% --baud 921600 ^
     --chip esp32  --before default_reset --after hard_reset ^
     write_flash -z --flash_mode dio --flash_freq 80m --flash_size detect ^
     0x10000 ./%FILENAME%.bin

pause