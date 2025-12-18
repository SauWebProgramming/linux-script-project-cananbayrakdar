Linux Sunucu Durum Paneli

 Proje Tanıtımı
Bu projede Linux işletim sistemi üzerinde çalışan bir sunucunun anlık durumunu
takip edebileceğim basit bir sunucu durum paneli geliştirdim.
Panel üzerinde CPU kullanımı, RAM durumu, disk alanı ve aktif kullanıcı sayısı
bilgileri yer almakta.

Bu projeyi yaparken amacım, sunucuya her seferinde terminalden komut yazmak yerine,
tarayıcı üzerinden güncel sistem bilgilerini kolayca görüntüleyebilmeyi sağlamaktı.
sürekli güncellenen yapıyı cronla projeye ekledim.
* * * * * /home/canan/monitor.sh crontab içine eklenen bu kodla dakikada bir monitor.sh' ın tekarar çalışmasını sağladım.

## Kullanılan Paketler ve Teknolojiler
Proje geliştirilirken aşağıdaki paket ve teknolojilerden faydalandım:

WSL (Ubuntu): Windows üzerinde Linux ortamı kurmak için
Nginx: Dashboard sayfasını tarayıcıdan görüntülemek için web sunucusu olarak
Bash Script: Sistemden CPU, RAM ve disk bilgilerini almak için
Cron: Yazdığım scriptin otomatik olarak çalışmasını sağlamak için
HTML : Sunucu durum panelinin arayüzünü oluşturmak için

projede wsl'i aşağıdaki komutla kurdum:
wsl --install

Proje kapsamında Nginx web sunucusunu aşağıdaki komut ile kurdum:
sudo apt install nginx 
