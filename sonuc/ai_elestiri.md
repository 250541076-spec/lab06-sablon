# Yapay Zeka Eleştirisi ve Değerlendirmesi

## 1. Doğru ve Başarılı Yönler
- Yapay zeka, sorguların analiz süreçlerinde (EXPLAIN ANALYZE) ve index oluşturma adımlarında doğru SQL syntax'larını sunarak süreci hızlandırdı.
- B-tree ve bileşik indeks (composite index) seçimlerinde sorgu koşullarındaki sıralamaya (sol taraftaki eşitlik, sağ taraftaki aralık) dikkat ederek doğru indeks stratejisi oluşturdu.

## 2. Eksik veya Hatalı Yönler
- G4 aşamasında silinmiş olan indeksleri tekrar silmeye çalışan komut dizisi verdiği için PostgreSQL tarafında `ERROR: index does not exist` hatasıyla karşılaşılmasına neden oldu.
- Sorgu süreleri ortam bağımlı (Docker container overhead ve sistem yükü) olduğu için üretilen teorik süre tahminleri anlık test sonuçlarıyla milisaniyelik farklılıklar gösterdi.

## 3. Genel Değerlendirme
Yapay zeka, laboratuvar görevlerinin adımlarını takip etmede ve terminal komutlarını doğru kurgulamada oldukça yardımcı bir asistandır. Ancak veritabanı durumunun anlık takibinde yetersiz kalabildiğinden üretilen komutların ve dönen hataların kullanıcı tarafından dikkatle incelenmesi gerekmektedir.