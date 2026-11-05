-- =====================================================
-- Föy 06 / Görev 2 — İndeks tasarımınız
-- Föydeki üç hedef sorguyu hızlandıracak üç CREATE INDEX
-- komutunu buraya yazın. Bileşik indekste sütun SIRASI önemlidir
-- (eşitlik koşulu önce, aralık koşulu sonra).
-- =====================================================

-- S1 için indeks (uye_id)
CREATE INDEX idx_girisler_uye ON girisler (uye_id);

-- S2 için indeks (giris_zamani)
CREATE INDEX idx_girisler_zamani ON girisler (giris_zamani);

-- S3 için bileşik indeks (salon_id, giris_zamani)
CREATE INDEX idx_girisler_salon_zamani ON girisler (salon_id, giris_zamani);