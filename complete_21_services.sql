-- Complete 21 Korean Fortune Services for All Homepage Sections
-- This ensures Popular (1-7), Recommended (8-14), and Hot Deals (15-21) sections are all populated

-- STEP 1: Delete all existing location data (except the original sample)
DELETE FROM locations WHERE id != '550e8400-e29b-41d4-a716-446655440002';

-- STEP 2: Delete all existing places (we'll add new ones)
DELETE FROM places;

-- STEP 3: Add Korean fortune telling locations in Seoul (21 locations)
INSERT INTO places (id, region, city, district, postal_code, address_line, place_label, latitude, longitude) VALUES
-- Gangnam locations (1-5)
('f47ac10b-58cc-4372-a567-0e02b2c3d479', '서울특별시', '강남구', '신사동', '06028', '가로수길 45-7, 2층', 'tarot-garosu', 37.5209, 127.0230),
('6ba7b810-9dad-11d1-80b4-00c04fd430c8', '서울특별시', '강남구', '청담동', '06015', '청담로 89, 청담빌딩 3층', 'saju-cheongdam', 37.5272, 127.0432),
('6ba7b811-9dad-11d1-80b4-00c04fd430c8', '서울특별시', '강남구', '압구정동', '06001', '압구정로 102, 로데오빌딩 5층', 'palmistry-apgujeong', 37.5264, 127.0286),
('6ba7b812-9dad-11d1-80b4-00c04fd430c8', '서울특별시', '강남구', '역삼동', '06236', '테헤란로 152, 강남파이낸스센터 12층', 'numerology-yeoksam', 37.5012, 127.0396),
('6ba7b813-9dad-11d1-80b4-00c04fd430c8', '서울특별시', '강남구', '선릉역', '06295', '선릉로 521, 선릉타워 15층', 'crystal-seolleung', 37.5044, 127.0495),

-- Hongdae/Mapo locations (6-10)
('6ba7b814-9dad-11d1-80b4-00c04fd430c8', '서울특별시', '마포구', '홍익로2가', '04039', '홍익로5길 20, 홍대타워 4층', 'feng-hongdae', 37.5563, 126.9236),
('6ba7b815-9dad-11d1-80b4-00c04fd430c8', '서울특별시', '마포구', '서교동', '04053', '양화로 160, 메세나폴리스 8층', 'dream-seogyo', 37.5564, 126.9226),
('6ba7b816-9dad-11d1-80b4-00c04fd430c8', '서울특별시', '마포구', '상수동', '04055', '월드컵로 25길 19, 상수빌딩 3층', 'iching-sangsu', 37.5477, 126.9227),
('6ba7b817-9dad-11d1-80b4-00c04fd430c8', '서울특별시', '마포구', '합정동', '04051', '합정로 7길 25, 합정센터 6층', 'tea-hapjeong', 37.5499, 126.9131),
('6ba7b818-9dad-11d1-80b4-00c04fd430c8', '서울특별시', '마포구', '망원동', '04048', '월드컵로 32길 14, 망원빌딩 2층', 'astro-mangwon', 37.5560, 126.9068),

-- Jung-gu locations (11-15)
('6ba7b819-9dad-11d1-80b4-00c04fd430c8', '서울특별시', '중구', '명동2가', '04536', '명동8길 29, 명동센트럴 6층', 'sky-myeongdong', 37.5636, 126.9834),
('6ba7b81a-9dad-11d1-80b4-00c04fd430c8', '서울특별시', '중구', '을지로3가', '04548', '을지로15길 7, 을지빌딩 7층', 'cafe-euljiro', 37.5665, 126.9910),
('6ba7b81b-9dad-11d1-80b4-00c04fd430c8', '서울특별시', '중구', '회현동', '04630', '소공로 70, 회현빌딩 5층', 'rune-hoehyeon', 37.5583, 126.9772),
('6ba7b81c-9dad-11d1-80b4-00c04fd430c8', '서울특별시', '중구', '장충동', '04605', '장충단로 60, 장충빌딩 8층', 'chakra-jangchung', 37.5531, 127.0095),
('6ba7b81d-9dad-11d1-80b4-00c04fd430c8', '서울특별시', '중구', '신당동', '04622', '다산로 32길 15, 신당센터 4층', 'soul-sindang', 37.5658, 127.0158),

-- Jongno/Gangbuk locations (16-21)
('6ba7b81e-9dad-11d1-80b4-00c04fd430c8', '서울특별시', '종로구', '인사동', '03148', '인사동길 35, 인사아트센터 3층', 'oracle-insadong', 37.5717, 126.9854),
('6ba7b81f-9dad-11d1-80b4-00c04fd430c8', '서울특별시', '성북구', '성신여대입구역', '02844', '동소문로 47, 성신빌딩 2층', 'garden-seongbuk', 37.5928, 127.0163),
('6ba7b820-9dad-11d1-80b4-00c04fd430c8', '서울특별시', '종로구', '종로3가', '03189', '종로 69, 종로타워 8층', 'plaza-jongno', 37.5703, 126.9910),
('6ba7b821-9dad-11d1-80b4-00c04fd430c8', '서울특별시', '영등포구', '여의도동', '07327', '국제금융로 10, IFC몰 3층', 'times-yeouido', 37.5254, 126.9246),
('6ba7b822-9dad-11d1-80b4-00c04fd430c8', '서울특별시', '영등포구', '영등포동', '07305', '영중로 15, 타임스퀘어 12층', 'energy-yeongdeungpo', 37.5172, 126.9033),
('6ba7b823-9dad-11d1-80b4-00c04fd430c8', '서울특별시', '송파구', '잠실동', '05551', '올림픽로 240, 롯데월드타워 스카이31 31층', 'premium-jamsil', 37.5125, 127.1025);

-- STEP 4: Add localization columns if they don't exist
ALTER TABLE locations 
ADD COLUMN IF NOT EXISTS title_en TEXT,
ADD COLUMN IF NOT EXISTS title_ko TEXT,
ADD COLUMN IF NOT EXISTS subtitle_en TEXT,
ADD COLUMN IF NOT EXISTS subtitle_ko TEXT,
ADD COLUMN IF NOT EXISTS tagline_en TEXT,
ADD COLUMN IF NOT EXISTS tagline_ko TEXT;

-- STEP 5: Add 21 Korean fortune telling services with proper localization
INSERT INTO locations (
  id, title, title_ko, title_en, subtitle, subtitle_ko, subtitle_en,
  description, main_image_url, gallery_images, icon, features,
  base_price, price_description, currency, rating, review_count,
  phone, email, address, website, business_hours,
  tagline, tagline_ko, tagline_en, image_url, price_krw,
  activity_level, skill_level, max_guests_total, min_age, place_id
) VALUES 

-- POPULAR SERVICES (1-7)
('a1b2c3d4-e5f6-7890-1234-567890abcdef', '미스틱 타로 살롱', '미스틱 타로 살롱', 'Mystic Tarot Salon', '신비로운 타로카드로 미래를 읽어드립니다', '신비로운 타로카드로 미래를 읽어드립니다', 'Unlock your future with mystical tarot cards', '프랑스에서 직수입한 정통 타로카드와 30년 경력의 타로마스터가 함께하는 프리미엄 타로 상담소입니다.', 'https://images.unsplash.com/photo-1578662996442-48f60103fc96?w=800&h=600&fit=crop&auto=format', ARRAY['https://images.unsplash.com/photo-1578662996442-48f60103fc96?w=800&h=600&fit=crop&auto=format'], '🔮', '[]', 45000, '30분 상담 기준', 'KRW', 4.8, 89, '02-555-0101', 'info@mystictarot.kr', '서울특별시 강남구 신사동 가로수길 45-7, 2층', 'https://mystictarot.kr', '매일 11:00 - 22:00', '신비로운 타로카드로 미래를 읽어드립니다', '신비로운 타로카드로 미래를 읽어드립니다', 'Unlock your future with mystical tarot cards', 'https://images.unsplash.com/photo-1578662996442-48f60103fc96?w=800&h=600&fit=crop&auto=format', 45000, 'LIGHT', 'BEGINNER', 2, 18, 'f47ac10b-58cc-4372-a567-0e02b2c3d479'),

('b2c3d4e5-f6a7-8901-2345-678901bcdefb', '동양명리 사주궁합소', '동양명리 사주궁합소', 'Oriental Saju Palace', '천년 역사의 정통 사주명리학', '천년 역사의 정통 사주명리학', 'Traditional Saju with millennium history', '조선왕조 궁중 명리학을 계승한 정통 사주명리 전문가가 직접 상담해드립니다.', 'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=800&h=600&fit=crop&auto=format', ARRAY['https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=800&h=600&fit=crop&auto=format'], '📜', '[]', 80000, '60분 정밀 상담', 'KRW', 4.9, 156, '02-555-0202', 'info@sajugoong.kr', '서울특별시 강남구 청담동 청담로 89, 청담빌딩 3층', 'https://sajugoong.kr', '평일 09:00 - 18:00', '천년 역사의 정통 사주명리학', '천년 역사의 정통 사주명리학', 'Traditional Saju with millennium history', 'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=800&h=600&fit=crop&auto=format', 80000, 'MODERATE', 'ADVANCED', 3, 20, '6ba7b810-9dad-11d1-80b4-00c04fd430c8'),

('c3d4e5f6-a7b8-9012-3456-789012cdefab', '관상수상 운명학당', '관상수상 운명학당', 'Palm & Face Reading Center', '손금과 얼굴로 읽는 당신의 운명', '손금과 얼굴로 읽는 당신의 운명', 'Read your destiny through palms and face', '손금(수상)과 관상을 통해 선천적 운명과 후천적 노력의 방향을 제시하는 전문 상담소입니다.', 'https://images.unsplash.com/photo-1559827260-dc66d52bef19?w=800&h=600&fit=crop&auto=format', ARRAY['https://images.unsplash.com/photo-1559827260-dc66d52bef19?w=800&h=600&fit=crop&auto=format'], '✋', '[]', 35000, '20분 신속 분석', 'KRW', 4.6, 73, '02-555-0303', 'info@palmface.kr', '서울특별시 강남구 압구정동 압구정로 102, 로데오빌딩 5층', 'https://palmface.kr', '매일 12:00 - 21:00', '손금과 얼굴로 읽는 당신의 운명', '손금과 얼굴로 읽는 당신의 운명', 'Read your destiny through palms and face', 'https://images.unsplash.com/photo-1559827260-dc66d52bef19?w=800&h=600&fit=crop&auto=format', 35000, 'LIGHT', 'BEGINNER', 1, 16, '6ba7b811-9dad-11d1-80b4-00c04fd430c8'),

('d4e5f6a7-b8c9-0123-4567-890123defabc', '신비 수비학 연구소', '신비 수비학 연구소', 'Mystic Numerology Institute', '숫자로 풀어내는 당신만의 운명 코드', '숫자로 풀어내는 당신만의 운명 코드', 'Decode your unique destiny through numbers', '고대부터 전해내려온 수비학의 신비한 힘으로 개인의 운명 번호를 분석합니다.', 'https://images.unsplash.com/photo-1509909756405-be0199881695?w=800&h=600&fit=crop&auto=format', ARRAY['https://images.unsplash.com/photo-1509909756405-be0199881695?w=800&h=600&fit=crop&auto=format'], '🔢', '[]', 38000, '35분 수비 분석', 'KRW', 4.5, 67, '02-555-0404', 'info@numerology.kr', '서울특별시 강남구 역삼동 테헤란로 152, 강남파이낸스센터 12층', 'https://numerology.kr', '평일 09:00 - 19:00', '숫자로 풀어내는 당신만의 운명 코드', '숫자로 풀어내는 당신만의 운명 코드', 'Decode your destiny through numbers', 'https://images.unsplash.com/photo-1509909756405-be0199881695?w=800&h=600&fit=crop&auto=format', 38000, 'LIGHT', 'BEGINNER', 2, 18, '6ba7b812-9dad-11d1-80b4-00c04fd430c8'),

('e5f6a7b8-c9d0-1234-5678-901234efabcd', '크리스탈 오라클 센터', '크리스탈 오라클 센터', 'Crystal Oracle Center', '수정의 에너지로 정화하고 미래를 봅니다', '수정의 에너지로 정화하고 미래를 봅니다', 'Purify and see future with crystal energy', '천연 수정과 보석의 에너지를 활용한 오라클 리딩과 힐링 서비스를 제공합니다.', 'https://images.unsplash.com/photo-1518709268805-4e9042af2176?w=800&h=600&fit=crop&auto=format', ARRAY['https://images.unsplash.com/photo-1518709268805-4e9042af2176?w=800&h=600&fit=crop&auto=format'], '💎', '[]', 50000, '45분 힐링 포함', 'KRW', 4.7, 112, '02-555-0505', 'info@crystal.kr', '서울특별시 강남구 선릉역 선릉로 521, 선릉타워 15층', 'https://crystal.kr', '화-일 14:00 - 22:00', '수정의 에너지로 정화하고 미래를 봅니다', '수정의 에너지로 정화하고 미래를 봅니다', 'Purify and see future with crystal energy', 'https://images.unsplash.com/photo-1518709268805-4e9042af2176?w=800&h=600&fit=crop&auto=format', 50000, 'LIGHT', 'BEGINNER', 4, 18, '6ba7b813-9dad-11d1-80b4-00c04fd430c8'),

('f6a7b8c9-d0e1-2345-6789-012345fabcde', '음양오행 풍수원', '음양오행 풍수원', 'Yin Yang Five Elements Center', '집과 사무실의 기운을 바꿔드립니다', '집과 사무실의 기운을 바꿔드립니다', 'Transform energy of your home and office', '음양오행 이론에 바탕한 전문 풍수 상담과 인테리어 컨설팅을 제공합니다.', 'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=800&h=600&fit=crop&auto=format', ARRAY['https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=800&h=600&fit=crop&auto=format'], '🏮', '[]', 120000, '현장 방문 2시간', 'KRW', 4.8, 67, '02-555-0606', 'info@fengshui.kr', '서울특별시 마포구 홍익로2가 홍익로5길 20, 홍대타워 4층', 'https://fengshui.kr', '평일 10:00 - 18:00', '집과 사무실의 기운을 바꿔드립니다', '집과 사무실의 기운을 바꿔드립니다', 'Transform energy of home and office', 'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=800&h=600&fit=crop&auto=format', 120000, 'MODERATE', 'INTERMEDIATE', 2, 25, '6ba7b814-9dad-11d1-80b4-00c04fd430c8'),

('a7b8c9d0-e1f2-3456-7890-123456abcdef', '몽해몽 꿈해석소', '몽해몽 꿈해석소', 'Dream Oracle Center', '당신의 꿈이 전하는 메시지를 들려드립니다', '당신의 꿈이 전하는 메시지를 들려드립니다', 'Decode messages your dreams are telling you', '프로이트와 융의 정신분석학과 동양의 전통 꿈해몽학을 결합한 전문 꿈해석 서비스입니다.', 'https://images.unsplash.com/photo-1462331940025-496dfbfc7564?w=800&h=600&fit=crop&auto=format', ARRAY['https://images.unsplash.com/photo-1462331940025-496dfbfc7564?w=800&h=600&fit=crop&auto=format'], '🌙', '[]', 40000, '40분 상담', 'KRW', 4.5, 94, '02-555-0707', 'info@dream.kr', '서울특별시 마포구 서교동 양화로 160, 메세나폴리스 8층', 'https://dream.kr', '매일 13:00 - 21:00', '당신의 꿈이 전하는 메시지를 들려드립니다', '당신의 꿈이 전하는 메시지를 들려드립니다', 'Decode messages your dreams tell you', 'https://images.unsplash.com/photo-1462331940025-496dfbfc7564?w=800&h=600&fit=crop&auto=format', 40000, 'LIGHT', 'BEGINNER', 1, 16, '6ba7b815-9dad-11d1-80b4-00c04fd430c8'),

-- RECOMMENDED SERVICES (8-14)
('b8c9d0e1-f2a3-4567-8901-234567bcdef8', '주역오행 지혜원', '주역오행 지혜원', 'I-Ching Five Elements Center', '3000년 주역의 지혜로 인생을 밝혀드립니다', '3000년 주역의 지혜로 인생을 밝혀드립니다', 'Illuminate life with 3000 years I-Ching wisdom', '중국 고전 주역(易經)의 64괘를 통해 현재 상황을 분석하고 미래의 변화를 예측합니다.', 'https://images.unsplash.com/photo-1578662996442-48f60103fc96?w=800&h=600&fit=crop&auto=format', ARRAY['https://images.unsplash.com/photo-1578662996442-48f60103fc96?w=800&h=600&fit=crop&auto=format'], '☯️', '[]', 60000, '50분 정밀 해석', 'KRW', 4.9, 128, '02-555-0808', 'info@iching.kr', '서울특별시 마포구 상수동 월드컵로 25길 19, 상수빌딩 3층', 'https://iching.kr', '평일 10:00 - 19:00', '3000년 주역의 지혜로 인생을 밝혀드립니다', '3000년 주역의 지혜로 인생을 밝혀드립니다', 'Illuminate life with I-Ching wisdom', 'https://images.unsplash.com/photo-1578662996442-48f60103fc96?w=800&h=600&fit=crop&auto=format', 60000, 'MODERATE', 'INTERMEDIATE', 2, 21, '6ba7b816-9dad-11d1-80b4-00c04fd430c8'),

('c9d0e1f2-a3b4-5678-9012-345678cdefab', '다선일체 명상원', '다선일체 명상원', 'Tea Zen Unity Center', '차 한 잔의 여유 속에서 찾는 내면의 목소리', '차 한 잔의 여유 속에서 찾는 내면의 목소리', 'Find inner voice in tea tranquility', '전통 차문화와 명상을 결합한 독특한 점술 공간입니다.', 'https://images.unsplash.com/photo-1544787219-7f47ccb76574?w=800&h=600&fit=crop&auto=format', ARRAY['https://images.unsplash.com/photo-1544787219-7f47ccb76574?w=800&h=600&fit=crop&auto=format'], '🍵', '[]', 55000, '90분 풀코스', 'KRW', 4.6, 85, '02-555-0909', 'info@tea.kr', '서울특별시 마포구 합정동 합정로 7길 25, 합정센터 6층', 'https://tea.kr', '매일 11:00 - 20:00', '차 한 잔의 여유 속에서 찾는 내면의 목소리', '차 한 잔의 여유 속에서 찾는 내면의 목소리', 'Find inner voice in tea tranquility', 'https://images.unsplash.com/photo-1544787219-7f47ccb76574?w=800&h=600&fit=crop&auto=format', 55000, 'LIGHT', 'BEGINNER', 3, 18, '6ba7b817-9dad-11d1-80b4-00c04fd430c8'),

('d0e1f2a3-b4c5-6789-0123-456789defabc', '문스타 점성술원', '문스타 점성술원', 'Moon Star Astrology Center', '달의 리듬과 별자리가 알려주는 우주의 메시지', '달의 리듬과 별자리가 알려주는 우주의 메시지', 'Cosmic messages from lunar rhythms', '서양 점성술과 동양의 음력 체계를 결합한 특별한 점술 서비스입니다.', 'https://images.unsplash.com/photo-1519608487953-e999c86e7455?w=800&h=600&fit=crop&auto=format', ARRAY['https://images.unsplash.com/photo-1519608487953-e999c86e7455?w=800&h=600&fit=crop&auto=format'], '🌟', '[]', 65000, '60분 차트 분석', 'KRW', 4.7, 103, '02-555-1010', 'info@astro.kr', '서울특별시 마포구 망원동 월드컵로 32길 14, 망원빌딩 2층', 'https://astro.kr', '화-토 15:00 - 22:00', '달의 리듬과 별자리가 알려주는 우주의 메시지', '달의 리듬과 별자리가 알려주는 우주의 메시지', 'Cosmic messages from lunar rhythms', 'https://images.unsplash.com/photo-1519608487953-e999c86e7455?w=800&h=600&fit=crop&auto=format', 65000, 'MODERATE', 'INTERMEDIATE', 2, 20, '6ba7b818-9dad-11d1-80b4-00c04fd430c8'),

('e1f2a3b4-c5d6-7890-1234-567890efabcd', '하늘궁전 운명원', '하늘궁전 운명원', 'Sky Palace Destiny Center', '하늘의 뜻을 읽어 지상의 길을 밝힙니다', '하늘의 뜻을 읽어 지상의 길을 밝힙니다', 'Read heavens will to illuminate earthly path', '31층 하늘 위 전망에서 인생을 조망하는 특별한 점술 서비스입니다.', 'https://images.unsplash.com/photo-1480497490787-505ec076689f?w=800&h=600&fit=crop&auto=format', ARRAY['https://images.unsplash.com/photo-1480497490787-505ec076689f?w=800&h=600&fit=crop&auto=format'], '🏯', '[]', 150000, '90분 VIP 상담', 'KRW', 4.9, 76, '02-555-1111', 'info@sky.kr', '서울특별시 중구 명동2가 명동8길 29, 명동센트럴 6층', 'https://sky.kr', '매일 10:00 - 20:00', '하늘의 뜻을 읽어 지상의 길을 밝힙니다', '하늘의 뜻을 읽어 지상의 길을 밝힙니다', 'Read heavens will to illuminate path', 'https://images.unsplash.com/photo-1480497490787-505ec076689f?w=800&h=600&fit=crop&auto=format', 150000, 'LIGHT', 'BEGINNER', 1, 25, '6ba7b819-9dad-11d1-80b4-00c04fd430c8'),

('f2f3a4b5-c6d7-8901-2345-678901efabcf', '스타사인 카페', '스타사인 카페', 'Star Sign Cafe', '맛있는 커피와 함께 즐기는 가벼운 별자리 운세', '맛있는 커피와 함께 즐기는 가벼운 별자리 운세', 'Light zodiac fortune with delicious coffee', '캐주얼하고 편안한 분위기에서 즐기는 별자리 운세 카페입니다.', 'https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?w=800&h=600&fit=crop&auto=format', ARRAY['https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?w=800&h=600&fit=crop&auto=format'], '☕', '[]', 25000, '30분 + 음료', 'KRW', 4.4, 142, '02-555-1212', 'info@cafe.kr', '서울특별시 중구 을지로3가 을지로15길 7, 을지빌딩 7층', 'https://cafe.kr', '매일 10:00 - 23:00', '맛있는 커피와 함께 즐기는 가벼운 별자리 운세', '맛있는 커피와 함께 즐기는 가벼운 별자리 운세', 'Light zodiac fortune with coffee', 'https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?w=800&h=600&fit=crop&auto=format', 25000, 'LIGHT', 'BEGINNER', 4, 16, '6ba7b81a-9dad-11d1-80b4-00c04fd430c8'),

('f3f4a5b6-c7d8-9012-3456-789012efabcd', '바이킹 룬 스톤', '바이킹 룬 스톤', 'Viking Rune Stone', '고대 바이킹의 신비한 룬 문자로 미래를 예언합니다', '고대 바이킹의 신비한 룬 문자로 미래를 예언합니다', 'Prophesy future with ancient Viking runes', '북유럽 바이킹 시대부터 내려온 신성한 룬 문자의 힘으로 운명을 점칩니다.', 'https://images.unsplash.com/photo-1578662996442-48f60103fc96?w=800&h=600&fit=crop&auto=format', ARRAY['https://images.unsplash.com/photo-1578662996442-48f60103fc96?w=800&h=600&fit=crop&auto=format'], '🪨', '[]', 42000, '25분 룬 리딩', 'KRW', 4.6, 89, '02-555-1313', 'info@rune.kr', '서울특별시 중구 회현동 소공로 70, 회현빌딩 5층', 'https://rune.kr', '매일 12:00 - 20:00', '고대 바이킹의 신비한 룬 문자로 미래를 예언합니다', '고대 바이킹의 신비한 룬 문자로 미래를 예언합니다', 'Prophesy future with Viking runes', 'https://images.unsplash.com/photo-1578662996442-48f60103fc96?w=800&h=600&fit=crop&auto=format', 42000, 'LIGHT', 'BEGINNER', 1, 16, '6ba7b81b-9dad-11d1-80b4-00c04fd430c8'),

('f4f5a6b7-c8d9-0123-4567-890123efabce', '차크라 밸런스 센터', '차크라 밸런스 센터', 'Chakra Balance Center', '7개 차크라의 균형으로 완전한 치유를 경험하세요', '7개 차크라의 균형으로 완전한 치유를 경험하세요', 'Experience complete healing through 7 chakra balance', '인체의 7개 차크라 에너지 센터를 정화하고 균형을 맞춰주는 전문 힐링 센터입니다.', 'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=800&h=600&fit=crop&auto=format', ARRAY['https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=800&h=600&fit=crop&auto=format'], '🌈', '[]', 75000, '60분 차크라 힐링', 'KRW', 4.8, 94, '02-555-1414', 'info@chakra.kr', '서울특별시 중구 장충동 장충단로 60, 장충빌딩 8층', 'https://chakra.kr', '화-일 11:00 - 21:00', '7개 차크라의 균형으로 완전한 치유를 경험하세요', '7개 차크라의 균형으로 완전한 치유를 경험하세요', 'Experience complete healing through chakra balance', 'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=800&h=600&fit=crop&auto=format', 75000, 'MODERATE', 'INTERMEDIATE', 3, 20, '6ba7b81c-9dad-11d1-80b4-00c04fd430c8'),

-- HOT DEALS SERVICES (15-21)
('f5f6a7b8-c9d0-1234-5678-901234efabcf', '영혼의 안식처', '영혼의 안식처', 'Soul Sanctuary', '깊은 영적 통찰로 인생의 진정한 의미를 찾아드립니다', '깊은 영적 통찰로 인생의 진정한 의미를 찾아드립니다', 'Find true meaning of life through spiritual insights', '영성 상담 전문가와 함께 내면의 목소리에 귀 기울이고 영혼의 성장을 도모하는 특별한 공간입니다.', 'https://images.unsplash.com/photo-1544787219-7f47ccb76574?w=800&h=600&fit=crop&auto=format', ARRAY['https://images.unsplash.com/photo-1544787219-7f47ccb76574?w=800&h=600&fit=crop&auto=format'], '🕊️', '[]', 90000, '75분 영성 상담', 'KRW', 4.9, 112, '02-555-1515', 'info@soul.kr', '서울특별시 중구 신당동 다산로 32길 15, 신당센터 4층', 'https://soul.kr', '평일 10:00 - 18:00', '깊은 영적 통찰로 인생의 진정한 의미를 찾아드립니다', '깊은 영적 통찰로 인생의 진정한 의미를 찾아드립니다', 'Find true meaning through spiritual insights', 'https://images.unsplash.com/photo-1544787219-7f47ccb76574?w=800&h=600&fit=crop&auto=format', 90000, 'MODERATE', 'INTERMEDIATE', 2, 21, '6ba7b81d-9dad-11d1-80b4-00c04fd430c8'),

('f6f7a8b9-c0d1-2345-6789-012345efabcd', '미스틱 오라클 센터', '미스틱 오라클 센터', 'Mystic Oracle Center', '신비한 오라클 카드가 전하는 우주의 메시지', '신비한 오라클 카드가 전하는 우주의 메시지', 'Cosmic messages delivered by mystical oracle cards', '세계 각국의 다양한 오라클 카드를 활용한 전문 리딩 센터입니다.', 'https://images.unsplash.com/photo-1518709268805-4e9042af2176?w=800&h=600&fit=crop&auto=format', ARRAY['https://images.unsplash.com/photo-1518709268805-4e9042af2176?w=800&h=600&fit=crop&auto=format'], '🃏', '[]', 48000, '40분 오라클 리딩', 'KRW', 4.7, 156, '02-555-1616', 'info@oracle.kr', '서울특별시 종로구 인사동 인사동길 35, 인사아트센터 3층', 'https://oracle.kr', '매일 13:00 - 21:00', '신비한 오라클 카드가 전하는 우주의 메시지', '신비한 오라클 카드가 전하는 우주의 메시지', 'Cosmic messages by mystical oracle cards', 'https://images.unsplash.com/photo-1518709268805-4e9042af2176?w=800&h=600&fit=crop&auto=format', 48000, 'LIGHT', 'BEGINNER', 2, 18, '6ba7b81e-9dad-11d1-80b4-00c04fd430c8'),

('f7f8a9b0-c1d2-3456-7890-123456efabce', '오라클 가든 카페', '오라클 가든 카페', 'Oracle Garden Cafe', '힐링 음료와 함께하는 편안한 오라클 카드 체험', '힐링 음료와 함께하는 편안한 오라클 카드 체험', 'Comfortable oracle card experience with healing beverages', '아늑한 카페 분위기에서 즐기는 오라클 카드 리딩 공간입니다.', 'https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?w=800&h=600&fit=crop&auto=format', ARRAY['https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?w=800&h=600&fit=crop&auto=format'], '🌸', '[]', 28000, '20분 + 음료', 'KRW', 4.3, 198, '02-555-1717', 'info@garden.kr', '서울특별시 성북구 성신여대입구역 동소문로 47, 성신빌딩 2층', 'https://garden.kr', '매일 09:00 - 22:00', '힐링 음료와 함께하는 편안한 오라클 카드 체험', '힐링 음료와 함께하는 편안한 오라클 카드 체험', 'Comfortable oracle card experience with beverages', 'https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?w=800&h=600&fit=crop&auto=format', 28000, 'LIGHT', 'BEGINNER', 6, 16, '6ba7b81f-9dad-11d1-80b4-00c04fd430c8'),

('f8f9a0b1-c2d3-4567-8901-234567efabcf', '포춘 플라자', '포춘 플라자', 'Fortune Plaza', '여의도 금융가의 프리미엄 종합 운세 센터', '여의도 금융가의 프리미엄 종합 운세 센터', 'Premium comprehensive fortune center in Yeouido', '여의도 금융 중심가에 위치한 고급 종합 운세 센터입니다.', 'https://images.unsplash.com/photo-1480497490787-505ec076689f?w=800&h=600&fit=crop&auto=format', ARRAY['https://images.unsplash.com/photo-1480497490787-505ec076689f?w=800&h=600&fit=crop&auto=format'], '💼', '[]', 95000, '70분 종합 상담', 'KRW', 4.8, 124, '02-555-1818', 'info@plaza.kr', '서울특별시 종로구 종로3가 종로 69, 종로타워 8층', 'https://plaza.kr', '평일 08:00 - 20:00', '여의도 금융가의 프리미엄 종합 운세 센터', '여의도 금융가의 프리미엄 종합 운세 센터', 'Premium comprehensive fortune center', 'https://images.unsplash.com/photo-1480497490787-505ec076689f?w=800&h=600&fit=crop&auto=format', 95000, 'MODERATE', 'ADVANCED', 3, 25, '6ba7b820-9dad-11d1-80b4-00c04fd430c8'),

('f9f0a1b2-c3d4-5678-9012-345678efabcd', '타임스퀘어 운명학원', '타임스퀘어 운명학원', 'Times Square Destiny Academy', '현대적 감각의 젊은 운세 상담소', '현대적 감각의 젊은 운세 상담소', 'Modern young fortune consultation center', '영등포 타임스퀘어에 위치한 젊은 세대를 위한 현대적 운세 상담소입니다.', 'https://images.unsplash.com/photo-1578662996442-48f60103fc96?w=800&h=600&fit=crop&auto=format', ARRAY['https://images.unsplash.com/photo-1578662996442-48f60103fc96?w=800&h=600&fit=crop&auto=format'], '📱', '[]', 32000, '25분 젊은 운세', 'KRW', 4.4, 267, '02-555-1919', 'info@times.kr', '서울특별시 영등포구 여의도동 국제금융로 10, IFC몰 3층', 'https://times.kr', '매일 11:00 - 23:00', '현대적 감각의 젊은 운세 상담소', '현대적 감각의 젊은 운세 상담소', 'Modern young fortune center', 'https://images.unsplash.com/photo-1578662996442-48f60103fc96?w=800&h=600&fit=crop&auto=format', 32000, 'LIGHT', 'BEGINNER', 3, 16, '6ba7b821-9dad-11d1-80b4-00c04fd430c8'),

('f0f1a2b3-c4d5-6789-0123-456789efabcd', '문정 에너지 센터', '문정 에너지 센터', 'Munjeong Energy Center', '에너지 힐링과 운세의 완벽한 조화', '에너지 힐링과 운세의 완벽한 조화', 'Perfect harmony of energy healing and fortune', '송파구 문정동에 위치한 에너지 힐링과 운세 상담을 결합한 통합 센터입니다.', 'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=800&h=600&fit=crop&auto=format', ARRAY['https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=800&h=600&fit=crop&auto=format'], '⚡', '[]', 68000, '50분 통합 힐링', 'KRW', 4.6, 78, '02-555-2020', 'info@energy.kr', '서울특별시 영등포구 영등포동 영중로 15, 타임스퀘어 12층', 'https://energy.kr', '화-토 10:00 - 19:00', '에너지 힐링과 운세의 완벽한 조화', '에너지 힐링과 운세의 완벽한 조화', 'Perfect harmony of energy and fortune', 'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=800&h=600&fit=crop&auto=format', 68000, 'MODERATE', 'INTERMEDIATE', 2, 20, '6ba7b822-9dad-11d1-80b4-00c04fd430c8'),

('f1f2a3b4-c5d6-7890-1234-567890efabce', '프리미엄 스카이 센터', '프리미엄 스카이 센터', 'Premium Sky Center', '최고급 VIP 전용 운세 상담소', '최고급 VIP 전용 운세 상담소', 'Luxury VIP exclusive fortune consultation', '롯데월드타워 최상층에서 제공하는 초프리미엄 운세 상담 서비스입니다.', 'https://images.unsplash.com/photo-1480497490787-505ec076689f?w=800&h=600&fit=crop&auto=format', ARRAY['https://images.unsplash.com/photo-1480497490787-505ec076689f?w=800&h=600&fit=crop&auto=format'], '👑', '[]', 200000, '120분 VIP 전용', 'KRW', 5.0, 45, '02-555-2121', 'info@premium.kr', '서울특별시 송파구 잠실동 올림픽로 240, 롯데월드타워 스카이31 31층', 'https://premium.kr', '매일 09:00 - 21:00 (완전 예약제)', '최고급 VIP 전용 운세 상담소', '최고급 VIP 전용 운세 상담소', 'Luxury VIP exclusive fortune consultation', 'https://images.unsplash.com/photo-1480497490787-505ec076689f?w=800&h=600&fit=crop&auto=format', 200000, 'LIGHT', 'BEGINNER', 1, 30, '6ba7b823-9dad-11d1-80b4-00c04fd430c8');

-- STEP 6: Verification
SELECT 'Complete! 21 Korean fortune services added for all homepage sections!' as status;
SELECT COUNT(*) as total_locations FROM locations;
SELECT 
  CASE 
    WHEN ROW_NUMBER() OVER (ORDER BY price_krw) <= 7 THEN 'Popular (1-7)'
    WHEN ROW_NUMBER() OVER (ORDER BY price_krw) <= 14 THEN 'Recommended (8-14)'
    ELSE 'Hot Deals (15-21)'
  END as section,
  title, 
  COALESCE(title_en, title_ko, title) as english_title,
  price_krw
FROM locations 
WHERE id != '550e8400-e29b-41d4-a716-446655440002'
ORDER BY price_krw;
