# AK Hotel - Özelleştirme Rehberi

Bu rehber, AK Hotel şablonunu kendi ihtiyaçlarınıza göre özelleştirmeniz için hazırlanmıştır.

## 📋 İçindekiler

1. [Renk Teması Değiştirme](#renk-teması-değiştirme)
2. [Görselleri Değiştirme](#görselleri-değiştirme)
3. [İçerik Güncelleme](#içerik-güncelleme)
4. [Oda Bilgileri](#oda-bilgileri)
5. [İletişim Bilgileri](#iletişim-bilgileri)
6. [SEO Optimizasyonu](#seo-optimizasyonu)
7. [Form Yapılandırması](#form-yapılandırması)
8. [Gelişmiş Özelleştirmeler](#gelişmiş-özelleştirmeler)

## 🎨 Renk Teması Değiştirme

### CSS Değişkenleri
`assets/css/style.css` dosyasının başındaki `:root` bölümünü düzenleyin:

```css
:root {
    --primary-color: #006D77;    /* Ana renk - Deniz mavisi */
    --secondary-color: #FFD700;  /* İkincil renk - Altın tonu */
    --accent-color: #FFFFFF;     /* Vurgu rengi - Beyaz */
    --dark-color: #1a1a1a;       /* Koyu renk */
    --light-color: #f8f9fa;      /* Açık renk */
    --text-color: #333333;       /* Metin rengi */
    --border-color: #e9ecef;     /* Kenarlık rengi */
}
```

### Popüler Renk Kombinasyonları

#### Deniz Teması (Mevcut)
```css
--primary-color: #006D77;    /* Deniz mavisi */
--secondary-color: #FFD700;  /* Altın */
```

#### Orman Teması
```css
--primary-color: #2E8B57;    /* Deniz yeşili */
--secondary-color: #DAA520;  /* Altın */
```

#### Modern Gri
```css
--primary-color: #2C3E50;    /* Koyu gri */
--secondary-color: #E74C3C;  /* Kırmızı */
```

#### Lüks Mor
```css
--primary-color: #6A4C93;    /* Mor */
--secondary-color: #FFD700;  /* Altın */
```

## 🖼️ Görselleri Değiştirme

### Gerekli Görseller
Aşağıdaki görselleri `assets/images/` klasörüne eklemeniz gerekiyor:

#### Zorunlu Görseller
- `hero-bg.jpg` - Ana sayfa arka plan görseli (1920x1080px) - **Mevcut**
- `hotel-exterior.jpg` - Otel dış görünüm (800x600px) - **Mevcut**
- `standard-room.jpg` - Standart oda (600x400px) - **Mevcut**
- `deluxe-suite.jpg` - Deluxe suit (600x400px) - **Mevcut**
- `family-suite.jpg` - Aile suiti (600x400px) - **Mevcut**

#### Galeri Görselleri
- `gallery1.jpg` - Otel dış görünüm - **Mevcut**
- `gallery2.jpg` - Lobi - **Mevcut**
- `gallery3.jpg` - Restoran - **Mevcut**
- `gallery4.jpg` - Havuz - **Mevcut**
- `gallery5.jpg` - Spa - **Mevcut**
- `gallery6.jpg` - Deniz manzarası - **Mevcut**

#### Görsel Kaynakları
Tüm görseller [Unsplash](https://unsplash.com/)'tan alınmıştır ve ticari kullanıma uygundur:
- **Lisans**: Unsplash License (Ücretsiz ticari kullanım)
- **Kaynak**: https://unsplash.com/
- **Kredi**: Unsplash fotoğrafçılarına kredi vermek isteğe bağlıdır

### Görsel Optimizasyonu
```bash
# Görselleri optimize edin
npm install -g imagemin-cli
imagemin assets/images/* --out-dir=assets/images/optimized
```

### Görsel Boyutları
- **Hero Background**: 1920x1080px (16:9)
- **Oda Görselleri**: 600x400px (3:2)
- **Galeri Görselleri**: 800x600px (4:3)
- **İkonlar**: 64x64px (SVG önerilir)

## 📝 İçerik Güncelleme

### Ana Sayfa İçeriği
`index.html` dosyasında aşağıdaki bölümleri güncelleyin:

#### Hero Section
```html
<h1 class="display-3 fw-bold mb-4">
    Otel Adınız - Kuşadası'nın En Lüks Butik Oteli
</h1>
<p class="lead mb-4">
    Kendi sloganınızı buraya yazın
</p>
```

#### Hakkımızda Bölümü
```html
<h2 class="section-title mb-4">Otel Adınız'a Hoş Geldiniz</h2>
<p class="lead mb-4">
    Otel açıklamanızı buraya yazın
</p>
```

### Özellikler Listesi
```html
<div class="feature-item">
    <i class="fas fa-map-marker-alt text-primary"></i>
    <span>Konumunuzun açıklaması</span>
</div>
<div class="feature-item">
    <i class="fas fa-water text-primary"></i>
    <span>Deniz manzarası özelliği</span>
</div>
```

## 🏨 Oda Bilgileri

### Oda Kartı Yapısı
```html
<div class="room-card">
    <div class="room-image">
        <img src="assets/images/your-room.jpg" alt="Oda Adı">
        <div class="room-overlay">
            <a href="assets/images/your-room.jpg" data-lightbox="rooms" class="btn btn-light btn-sm">
                <i class="fas fa-search"></i>
            </a>
        </div>
    </div>
    <div class="room-content">
        <h4>Oda Adınız</h4>
        <p>Oda açıklamanız</p>
        <ul class="room-features">
            <li><i class="fas fa-bed"></i> 1 Yatak Odası</li>
            <li><i class="fas fa-bath"></i> Özel Banyo</li>
            <li><i class="fas fa-wifi"></i> Ücretsiz Wi-Fi</li>
            <li><i class="fas fa-tv"></i> LED TV</li>
        </ul>
        <div class="room-price">
            <span class="price">₺1.200</span>
            <span class="period">/gece</span>
        </div>
        <a href="#contact" class="btn btn-primary w-100">Rezervasyon Yap</a>
    </div>
</div>
```

### Oda Özellikleri İkonları
- `fas fa-bed` - Yatak odası
- `fas fa-bath` - Banyo
- `fas fa-wifi` - Wi-Fi
- `fas fa-tv` - TV
- `fas fa-umbrella-beach` - Balkon
- `fas fa-couch` - Oturma alanı
- `fas fa-snowflake` - Klima
- `fas fa-parking` - Otopark

## 📞 İletişim Bilgileri

### Footer Bilgileri
```html
<div class="col-lg-4 mb-4">
    <h5><i class="fas fa-hotel me-2"></i>Otel Adınız</h5>
    <p class="mb-3">Otel açıklamanız</p>
    <div class="social-links">
        <a href="#" class="text-white me-3"><i class="fab fa-facebook-f"></i></a>
        <a href="#" class="text-white me-3"><i class="fab fa-instagram"></i></a>
        <a href="#" class="text-white me-3"><i class="fab fa-twitter"></i></a>
        <a href="#" class="text-white"><i class="fab fa-tripadvisor"></i></a>
    </div>
</div>
```

### İletişim Bilgileri
```html
<div class="contact-info text-center">
    <div class="contact-icon">
        <i class="fas fa-map-marker-alt"></i>
    </div>
    <h5>Adres</h5>
    <p>Adresiniz<br>Kuşadası, Aydın</p>
</div>
```

## 🔍 SEO Optimizasyonu

### Meta Etiketleri
`index.html` dosyasının `<head>` bölümünü güncelleyin:

```html
<meta name="description" content="Kuşadası'nda elit butik otel deneyimi. Deniz manzaralı lüks odalar, spa hizmetleri ve unutulmaz konaklama deneyimi için Otel Adınız'ı tercih edin.">
<meta name="keywords" content="Kuşadası butik otel, deniz manzaralı konaklama, lüks pansiyon Kuşadası, Güvercinada otel, Kaleiçi konaklama, Ege butik otel">
<meta name="author" content="a.koc - https://github.com/ak-hosting">
<title>Otel Adınız - Kuşadası Elit Butik Otel | Deniz Manzaralı Lüks Konaklama</title>
```

### Yerel SEO Anahtar Kelimeleri
- "Kuşadası butik otel"
- "deniz manzaralı konaklama"
- "Güvercinada otel"
- "Kaleiçi pansiyon"
- "Ege butik otel"
- "Kuşadası lüks konaklama"

## 📧 Form Yapılandırması

### .env Dosyası
`.env.example` dosyasını `.env` olarak kopyalayın ve düzenleyin:

```env
SMTP_HOST=smtp.gmail.com
SMTP_PORT=587
SMTP_USER=your-email@gmail.com
SMTP_PASS=your-app-password
FROM_EMAIL=your-email@gmail.com
TO_EMAIL=info@yourbusiness.com
```

### Form Alanları
İletişim formundaki alanları özelleştirin:

```html
<div class="col-md-6 mb-3">
    <label for="guests" class="form-label">Kişi Sayısı</label>
    <select class="form-select" id="guests" name="guests">
        <option value="">Seçiniz</option>
        <option value="1">1 Kişi</option>
        <option value="2">2 Kişi</option>
        <option value="3">3 Kişi</option>
        <option value="4">4 Kişi</option>
        <option value="5+">5+ Kişi</option>
    </select>
</div>
```

## 🔧 Gelişmiş Özelleştirmeler

### Yeni Bölüm Ekleme

#### 1. HTML Bölümü
```html
<section id="new-section" class="py-5">
    <div class="container">
        <div class="text-center mb-5" data-aos="fade-up">
            <h2 class="section-title">Yeni Bölüm</h2>
            <p class="lead">Bölüm açıklaması</p>
        </div>
        <div class="row">
            <!-- İçerik -->
        </div>
    </div>
</section>
```

#### 2. CSS Stilleri
```css
/* Yeni bölüm için stiller */
.new-section {
    background: var(--light-color);
}

.new-section-item {
    background: var(--accent-color);
    padding: 2rem;
    border-radius: 15px;
    box-shadow: var(--shadow);
    transition: var(--transition);
}

.new-section-item:hover {
    transform: translateY(-5px);
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
}
```

#### 3. JavaScript İşlevselliği
```javascript
// Yeni bölüm için JavaScript
document.addEventListener('DOMContentLoaded', function() {
    // Yeni bölüm işlevselliği
});
```

### Özel Animasyonlar
AOS (Animate On Scroll) kullanarak yeni animasyonlar ekleyin:

```html
<div data-aos="fade-up" data-aos-delay="200">
    <!-- İçerik -->
</div>

<div data-aos="zoom-in" data-aos-duration="1000">
    <!-- İçerik -->
</div>

<div data-aos="slide-up" data-aos-offset="200">
    <!-- İçerik -->
</div>
```

### Harita Entegrasyonu
Google Maps entegrasyonu eklemek için:

```html
<!-- Harita bölümü -->
<section id="map" class="py-5 bg-light">
    <div class="container">
        <div class="text-center mb-5">
            <h2 class="section-title">Konumumuz</h2>
        </div>
        <div id="google-map" style="height: 400px; border-radius: 15px;"></div>
    </div>
</section>

<!-- Google Maps API -->
<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY"></script>
<script>
function initMap() {
    const location = { lat: 37.8601, lng: 27.2575 }; // Kuşadası koordinatları
    const map = new google.maps.Map(document.getElementById("google-map"), {
        zoom: 15,
        center: location,
    });
    const marker = new google.maps.Marker({
        position: location,
        map: map,
        title: "Otel Adınız"
    });
}
initMap();
</script>
```

### Sosyal Medya Entegrasyonu
Footer'daki sosyal medya linklerini güncelleyin:

```html
<div class="social-links">
    <a href="https://facebook.com/yourhotel" class="text-white me-3" target="_blank">
        <i class="fab fa-facebook-f"></i>
    </a>
    <a href="https://instagram.com/yourhotel" class="text-white me-3" target="_blank">
        <i class="fab fa-instagram"></i>
    </a>
    <a href="https://twitter.com/yourhotel" class="text-white me-3" target="_blank">
        <i class="fab fa-twitter"></i>
    </a>
    <a href="https://tripadvisor.com/yourhotel" class="text-white" target="_blank">
        <i class="fab fa-tripadvisor"></i>
    </a>
</div>
```

## 📱 Mobil Optimizasyon

### Responsive Test
Farklı cihazlarda test edin:
- iPhone (375px)
- iPad (768px)
- Desktop (1200px+)

### Mobil Özelleştirmeler
```css
@media (max-width: 768px) {
    .hero-section h1 {
        font-size: 2.5rem;
    }
    
    .section-title {
        font-size: 2rem;
    }
    
    .room-card {
        margin-bottom: 2rem;
    }
}
```

## 🚀 Performans Optimizasyonu

### Görsel Optimizasyonu
```bash
# WebP formatına dönüştürme
npm install -g imagemin-webp
imagemin assets/images/* --plugin=webp --out-dir=assets/images/webp
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

### Lazy Loading
```html
<img src="placeholder.jpg" data-src="actual-image.jpg" class="lazy" alt="Görsel">
```

## 🛡️ Güvenlik

### Form Güvenliği
```javascript
// CSRF token ekleme
const csrfToken = document.querySelector('meta[name="csrf-token"]').getAttribute('content');

fetch('/api/contact', {
    method: 'POST',
    headers: {
        'X-CSRF-TOKEN': csrfToken,
        'Content-Type': 'application/json'
    },
    body: JSON.stringify(formData)
});
```

### Input Validasyonu
```javascript
function validateEmail(email) {
    const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return re.test(email);
}

function validatePhone(phone) {
    const re = /^[\+]?[1-9][\d]{0,15}$/;
    return re.test(phone);
}
```

## 📊 Analytics Entegrasyonu

### Google Analytics
```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script>
<script>
window.dataLayer = window.dataLayer || [];
function gtag(){dataLayer.push(arguments);}
gtag('js', new Date());
gtag('config', 'GA_MEASUREMENT_ID');
</script>
```

### Facebook Pixel
```html
<!-- Facebook Pixel -->
<script>
!function(f,b,e,v,n,t,s)
{if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};
if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];
s.parentNode.insertBefore(t,s)}(window, document,'script',
'https://connect.facebook.net/en_US/fbevents.js');
fbq('init', 'YOUR_PIXEL_ID');
fbq('track', 'PageView');
</script>
```

## 🎯 Özelleştirme Kontrol Listesi

- [ ] Renk teması değiştirildi
- [ ] Görseller eklendi ve optimize edildi
- [ ] Otel adı ve bilgileri güncellendi
- [ ] Oda bilgileri ve fiyatları güncellendi
- [ ] İletişim bilgileri güncellendi
- [ ] SEO meta etiketleri güncellendi
- [ ] Form yapılandırması tamamlandı
- [ ] Sosyal medya linkleri eklendi
- [ ] Mobil test yapıldı
- [ ] Performans optimizasyonu tamamlandı
- [ ] Analytics entegrasyonu yapıldı

## 📞 Destek

Özelleştirme sırasında sorun yaşarsanız:

- **E-posta**: ak@ak-pro.com
- **GitHub Issues**: [Sorun Bildirimi](https://github.com/ak-hosting/ak-hotel/issues)
- **Ücretli Destek**: Özel özelleştirmeler için profesyonel yardım

---

**💡 İpucu**: Değişiklik yapmadan önce dosyalarınızın yedeğini almayı unutmayın! 