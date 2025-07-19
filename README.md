# AK Hotel - Kuşadası Elit Butik Otel Web Sitesi Şablonu

![AK Hotel](https://img.shields.io/badge/Version-1.0.0-blue.svg)
![Bootstrap](https://img.shields.io/badge/Bootstrap-5.3.0-purple.svg)
![License](https://img.shields.io/badge/License-MIT-green.svg)

Kuşadası'ndaki elit butik oteller için ücretsiz, SEO dostu ve mobil uyumlu web sitesi şablonu. Bootstrap 5 ile geliştirildi, birkaç saniyede klonlayıp çalıştırabilirsiniz!

**[🚀 Canlı Demo](https://ak-hosting.github.io/ak-hotel/)** | **[📧 Destek İletişimi](mailto:ak@ak-pro.com)** | **[📦 GitHub Repository](https://github.com/ak-hosting/ak-hotel)**

## 🌟 Özellikler

### 🎨 Tasarım & Kullanıcı Deneyimi
- **Lüks Tasarım**: Mobil öncelikli, Bootstrap 5 ile responsive ve deniz temalı estetik
- **Modern Animasyonlar**: AOS (Animate On Scroll) ile zarif sayfa geçişleri
- **Smooth Scroll**: Yumuşak sayfa içi geçişler
- **Lightbox Galeri**: Otel ve oda görselleri için profesyonel galeri
- **Back to Top**: Kolay navigasyon için yukarı çıkma butonu

### 🏨 Otel Özellikleri
- **Oda Tanıtımı**: Standart odalar, deluxe suitler ve aile odaları
- **Hizmet Kartları**: Restoran, spa, havuz ve transfer hizmetleri
- **Fiyatlandırma**: Türk Lirası (₺) ile güncel fiyatlar
- **Rezervasyon Formu**: Detaylı iletişim ve rezervasyon formu

### 📱 Teknik Özellikler
- **SEO Optimize**: Kuşadası için anahtar kelimeler (ör. "butik otel Kuşadası")
- **Hızlı Yükleme**: Optimize edilmiş görseller ve kod
- **Mobil Uyumlu**: Tüm cihazlarda mükemmel görünüm
- **Cross-browser**: Tüm modern tarayıcılarda uyumlu

### 🛠️ Geliştirici Dostu
- **Modüler Kod**: Kolay özelleştirme için düzenli kod yapısı
- **CSS Değişkenleri**: Renk ve stil değişiklikleri için kolay erişim
- **Dokümantasyon**: Ayrıntılı kurulum ve özelleştirme rehberi
- **MIT Lisansı**: Ticari kullanım için gerekli izinler

## 📸 Ekran Görüntüleri

### Ana Sayfa
![Ana Sayfa](assets/images/screenshot-homepage.png)

### Odalar Bölümü
![Odalar](assets/images/screenshot-rooms.png)

### İletişim Formu
![İletişim](assets/images/screenshot-contact.png)

## 🚀 Hızlı Başlangıç

### 1. Depoyu Klonlayın
```bash
git clone https://github.com/ak-hosting/ak-hotel.git
cd ak-hotel
```

**Veya SSH ile:**
```bash
git clone git@github.com:ak-hosting/ak-hotel.git
cd ak-hotel
```

### 2. Dosyaları İnceleyin
```bash
# Proje yapısı
ak-hotel/
├── index.html              # Ana HTML dosyası
├── assets/
│   ├── css/
│   │   └── style.css       # Ana CSS dosyası
│   ├── js/
│   │   └── script.js       # JavaScript dosyası
│   └── images/            # Görseller (eklenecek)
├── .env.example           # E-posta yapılandırması örneği
├── README.md              # Bu dosya
├── CUSTOMIZATION.md       # Özelleştirme rehberi
└── LICENSE                # MIT lisansı
```

### 3. Yerel Sunucuda Çalıştırın
```bash
# Python ile
python -m http.server 8000

# Node.js ile
npx serve .

# PHP ile
php -S localhost:8000
```

Tarayıcınızda `http://localhost:8000` adresine gidin.

## 🎨 Özelleştirme

### Renk Teması Değiştirme
`assets/css/style.css` dosyasındaki CSS değişkenlerini güncelleyin:

```css
:root {
    --primary-color: #006D77;    /* Ana renk - Deniz mavisi */
    --secondary-color: #FFD700;  /* İkincil renk - Altın tonu */
    --accent-color: #FFFFFF;     /* Vurgu rengi - Beyaz */
    --dark-color: #1a1a1a;       /* Koyu renk */
    --light-color: #f8f9fa;      /* Açık renk */
}
```

### Görselleri Değiştirme
1. `assets/images/` klasörüne kendi otel görsellerinizi ekleyin
2. `index.html` dosyasındaki görsel yollarını güncelleyin:

```html
<!-- Hero background -->
<img src="assets/images/your-hotel-image.jpg" alt="Otel Görseli">

<!-- Oda görselleri -->
<img src="assets/images/your-room-image.jpg" alt="Oda Görseli">
```

#### Mevcut Görseller (Unsplash'tan)
Projede şu görseller bulunmaktadır:
- `hero-bg.jpg` - Ana sayfa arka plan görseli (Lüks otel dış görünümü)
- `hotel-exterior.jpg` - Otel dış görünümü
- `standard-room.jpg` - Standart oda görseli
- `deluxe-suite.jpg` - Deluxe suit görseli
- `family-suite.jpg` - Aile suiti görseli
- `gallery1.jpg` - `gallery6.jpg` - Galeri görselleri (Otel, lobi, restoran, havuz, spa, deniz manzarası)

**Not**: Tüm görseller Unsplash'tan alınmıştır ve ticari kullanıma uygundur.

### Oda Bilgilerini Güncelleme
`index.html` dosyasındaki oda kartlarını düzenleyin:

```html
<div class="room-card">
    <div class="room-image">
        <img src="assets/images/your-room.jpg" alt="Oda Adı">
    </div>
    <div class="room-content">
        <h4>Oda Adınız</h4>
        <p>Oda açıklamanız</p>
        <ul class="room-features">
            <li><i class="fas fa-bed"></i> Özellik 1</li>
            <li><i class="fas fa-bath"></i> Özellik 2</li>
        </ul>
        <div class="room-price">
            <span class="price">₺1.500</span>
            <span class="period">/gece</span>
        </div>
    </div>
</div>
```

### İletişim Bilgilerini Güncelleme
Footer ve iletişim bölümündeki bilgileri güncelleyin:

```html
<!-- Footer'da -->
<p><i class="fas fa-map-marker-alt me-2"></i>Adresiniz</p>
<p><i class="fas fa-phone me-2"></i>Telefon numaranız</p>
<p><i class="fas fa-envelope me-2"></i>E-posta adresiniz</p>
```

## 📧 E-posta Yapılandırması

### 1. .env Dosyasını Oluşturun
```bash
cp .env.example .env
```

### 2. SMTP Ayarlarını Yapılandırın
`.env` dosyasını düzenleyin:

```env
SMTP_HOST=smtp.gmail.com
SMTP_PORT=587
SMTP_USER=your-email@gmail.com
SMTP_PASS=your-app-password
FROM_EMAIL=your-email@gmail.com
TO_EMAIL=info@yourbusiness.com
```

### 3. Gmail App Password Oluşturma
1. Google Hesabınıza gidin
2. Güvenlik > 2 Adımlı Doğrulama'yı açın
3. Uygulama Şifreleri > Yeni uygulama şifresi oluşturun
4. Oluşturulan şifreyi `SMTP_PASS` olarak kullanın

## 🔧 Gelişmiş Özelleştirme

### Yeni Bölüm Ekleme
1. HTML'de yeni section oluşturun
2. CSS'de stil tanımlayın
3. JavaScript'te gerekli işlevselliği ekleyin

### Özel Animasyonlar
AOS (Animate On Scroll) kullanarak yeni animasyonlar ekleyin:

```html
<div data-aos="fade-up" data-aos-delay="200">
    <!-- İçerik -->
</div>
```

### Form İşlevselliği
Form gönderimi için backend entegrasyonu:

```javascript
// script.js dosyasında
contactForm.addEventListener('submit', function(e) {
    e.preventDefault();
    
    // Form verilerini al
    const formData = new FormData(this);
    
    // Backend'e gönder
    fetch('/api/contact', {
        method: 'POST',
        body: formData
    })
    .then(response => response.json())
    .then(data => {
        showAlert('Mesajınız gönderildi!', 'success');
    })
    .catch(error => {
        showAlert('Bir hata oluştu.', 'danger');
    });
});
```

## 📱 Mobil Optimizasyon

### Responsive Breakpoints
- **Desktop**: 1200px ve üzeri
- **Tablet**: 768px - 1199px
- **Mobile**: 767px ve altı

### Mobil Özellikler
- Touch-friendly butonlar
- Swipe galeri desteği
- Optimize edilmiş görsel boyutları
- Hızlı yükleme için lazy loading

## 🚀 Performans Optimizasyonu

### Görsel Optimizasyonu
```bash
# Görselleri optimize edin
npm install -g imagemin-cli
imagemin assets/images/* --out-dir=assets/images/optimized
```

### CSS/JS Minifikasyonu
```bash
# CSS minifikasyonu
npm install -g clean-css-cli
cleancss -o assets/css/style.min.css assets/css/style.css

# JS minifikasyonu
npm install -g uglify-js
uglifyjs assets/js/script.js -o assets/js/script.min.js
```

## 📊 SEO Optimizasyonu

### Meta Etiketleri
```html
<meta name="description" content="Kuşadası'nda elit butik otel deneyimi">
<meta name="keywords" content="Kuşadası butik otel, deniz manzaralı konaklama">
<meta name="author" content="a.koc - https://github.com/ak-hosting">
```

### Yerel SEO
- Kuşadası anahtar kelimeleri
- Türkçe içerik optimizasyonu
- Yerel işletme bilgileri
- Harita entegrasyonu (opsiyonel)

## 🛡️ Güvenlik

### Form Güvenliği
- CSRF koruması
- Input validasyonu
- XSS koruması
- Rate limiting

### SSL Sertifikası
```bash
# Let's Encrypt ile ücretsiz SSL
sudo certbot --nginx -d yourdomain.com
```

## 📞 Destek & İletişim

### Ücretsiz Destek
- GitHub Issues: [Sorun Bildirimi](https://github.com/ak-hosting/ak-hotel/issues)
- Dokümantasyon: Bu README ve CUSTOMIZATION.md

### Ücretli Destek
- **E-posta**: ak@ak-pro.com
- **Hizmetler**:
  - Logo tasarımı
  - Renk teması değişimi
  - Online rezervasyon sistemi
  - Harita entegrasyonu
  - Özel animasyonlar
  - Backend entegrasyonu

## 📄 Lisans

Bu proje MIT lisansı altında lisanslanmıştır. Detaylar için `LICENSE` dosyasını inceleyin.

### Kredi Zorunluluğu
Bu şablonu kullanıyorsanız, lütfen footer'da şu ibareyi ekleyin:

```html
<p class="mb-0">
    Geliştirici: <a href="https://github.com/ak-hosting" class="text-white">a.koc</a> | 
    Özelleştirme: <a href="mailto:ak@ak-pro.com" class="text-white">ak@ak-pro.com</a>
</p>
```

## 🤝 Katkıda Bulunma

1. Fork yapın
2. Feature branch oluşturun (`git checkout -b feature/amazing-feature`)
3. Değişikliklerinizi commit edin (`git commit -m 'Add amazing feature'`)
4. Branch'inizi push edin (`git push origin feature/amazing-feature`)
5. Pull Request oluşturun

## 📈 Gelecek Özellikler

- [ ] Online rezervasyon sistemi
- [ ] Çoklu dil desteği
- [ ] Dark mode
- [ ] PWA desteği
- [ ] Blog bölümü
- [ ] Müşteri yorumları
- [ ] Sosyal medya entegrasyonu
- [ ] Analytics entegrasyonu

## 🎯 Hedef Kitle

- **Kuşadası'ndaki butik oteller**
- **Deniz manzaralı pansiyonlar**
- **Elit konaklama işletmeleri**
- **Turizm sektörü profesyonelleri**

## 🌟 Neden AK Hotel Şablonu?

1. **Kuşadası Odaklı**: Yerel turizm sektörü için özel tasarım
2. **SEO Dostu**: Arama motorları için optimize edilmiş
3. **Mobil Öncelikli**: Tüm cihazlarda mükemmel deneyim
4. **Hızlı Kurulum**: Birkaç dakikada çalışır durumda
5. **Ücretsiz**: MIT lisansı ile ticari kullanım
6. **Profesyonel Destek**: Özelleştirme için uzman yardımı

---

**⭐ Bu projeyi beğendiyseniz yıldız vermeyi unutmayın!**

**📧 Sorularınız için**: ak@ak-pro.com

**🌐 Canlı Demo**: https://ak-hosting.github.io/ak-hotel/ 