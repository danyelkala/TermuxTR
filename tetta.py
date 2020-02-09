#!/usr/bin python
# -*- coding: utf-8 -*-
# Bu araç @keyiflerolsun tarafından | @KekikAkademi için yazılmıştır. 

import os, sys, time, random, platform
import ctypes   #Ctypes yabancı(dışarıdan) olan fonksiyonların kullanılmasını sağlar.
                #C dilinin veri tiplerini destekler(içinde barındırır).
                #Windows platformunda dynamic link libraries (DLL) dediğimiz,
                #Linux’da ise shared objects (SO) dediğimiz derlenmiş binary kütüphanelerden fonksiyon çağırmaya yarar.

##################################################################
isim = os.getlogin()
platform = platform.system()
renk = random.choice(["\033[31m","\033[32m","\033[33m","\033[34m","\033[35m","\033[36m"])
##################################################################

##################################################################
if sys.version_info.major < 3:
    print("\033[31mSadece P 3 !");sys.exit()
def temizle():
    if platform == "Windows":
        os.system("cls")
    else:
        os.system("clear")
##################################################################

##################################################################
temizle()
try:
    from colorama import init, Fore
    import colorama
except ImportError:
    print(f"\t\t\033[32mHoşgeldin {renk}{isim}\033[32m Lütfen Bekle ...\033[0m")
    print(f"\tGörünüşe göre colorama yüklü değil :/ . \n\t\tEndişelenme Python'u doğru kurduysan yükleyebilirim ")
    os.system("pip install colorama")
    print(f"\t\t {renk} Colorama Başarıyla Kuruldu!\n\033[0m")
    time.sleep(3)
    temizle()
    ##############################
    from colorama import init, Fore
    import colorama
    ##############################
    
##################################################################
init(convert=True)
##################################################################
if platform == "Windows":
    ctypes.windll.kernel32.SetConsoleTitleW("@KekikAkademi Python Taslağı")
else:
    os.system('title @KekikAkademi Python Taslağı')
##################################################################

text = '''
   _    _      _     _ _        ______            _                 
  | |  / )    | |   (_) |      (_____ \      _   | |                
  | | / / ____| |  _ _| |  _    _____) )   _| |_ | | _   ___  ____  
  | |< < / _  ) | / ) | | / )  |  ____/ | | |  _)| || \ / _ \|  _ \ 
  | | \ ( (/ /| |< (| | |< (   | |    | |_| | |__| | | | |_| | | | |
  |_|  \_)____)_| \_)_|_| \_)  |_|     \__  |\___)_| |_|\___/|_| |_|
                                      (____/                        
'''
print(Fore.GREEN + text)
print("\t\t{}| {} |".format(renk,isim) + Fore.YELLOW + ' Oturumundayız..\n')
print(Fore.CYAN + '\t[1] Discudemy Türkçe Link Çek\n\t[2] Linkleri Kontrol Et\n\t[3] Udemy üzerinden Satın Al\n' + Fore.WHITE, end='')
option = str(input("\n>> "))

if option == '1':
##################################################################
    temizle()
    try:
        from bs4 import BeautifulSoup
        import requests, bs4, lxml, re
    except ImportError:
        print(f"\t\t\033[32mHoşgeldin {renk}{isim}\033[32m Lütfen Bekle ...\033[0m")
        print(f"\tGörünüşe göre requests, bs4, lxml, re, BeautifulSoup yüklü değil :/ . \n\t\tEndişelenme Python'u doğru kurduysan yükleyebilirim ")
        os.system("pip install BeautifulSoup")
        os.system("pip install requests")
        os.system("pip install bs4")
        os.system("pip install lxml")
        os.system("pip install re")
        print(f"\t\t {renk} requests, bs4, lxml, re, BeautifulSoup Başarıyla Kuruldu!\n\033[0m")
        time.sleep(3)
        temizle()
        ##############################
        from bs4 import BeautifulSoup
        import requests, bs4, lxml, re
    ##############################
    taranacakSayfa = 12
    for SayfaNumarasi in range(1, taranacakSayfa+1):
        URL = 'https://www.discudemy.com/language/Turkish/{}'.format(SayfaNumarasi)
        response = requests.get(URL)
        whole_source = response.text
        soup = BeautifulSoup(whole_source, 'lxml')
        for DiscudemyLinkler in soup.findAll('a', attrs={'href': re.compile("^https://www.discudemy.com/Turkish/")}):
            GelenDiscudemy = DiscudemyLinkler['href']
            print(GelenDiscudemy)
            print(Fore.RED + "\tLinkler İşleniyor.." + Fore.WHITE)
            GelenDiscudemyKaydet = open("GelenDiscudemy.txt", "a")
            GelenDiscudemyKaydet.write(GelenDiscudemy + "\n")
            GelenDiscudemyKaydet.close()
    print("\n\t\t" + Fore.GREEN + "Linkler Kaydedildi.." + Fore.WHITE)
    time.sleep(2)
##################################################################

##################################################################




if option == '2':
    print("[+] 2 Seçildi")
    print(Fore.RED + "5 Saniye İçinde Çıkılıyor.." + Fore.WHITE)
    time.sleep(5)