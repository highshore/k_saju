-- Korean Fortune Telling Services Data
-- Execute this script in your Supabase SQL Editor to add diverse Korean fortune telling services

-- First, add more places for various fortune telling locations in Seoul
INSERT INTO places (id, region, city, district, postal_code, address_line, place_label, latitude, longitude) VALUES
-- Gangnam locations
('f47ac10b-58cc-4372-a567-0e02b2c3d479', '서울특별시', '강남구', '신사동', '06028', '가로수길 45-7, 2층', 'tarot-garosu', 37.5209, 127.0230),
('6ba7b810-9dad-11d1-80b4-00c04fd430c8', '서울특별시', '강남구', '청담동', '06015', '청담로 89, 청담빌딩 3층', 'saju-cheongdam', 37.5272, 127.0432),
('6ba7b811-9dad-11d1-80b4-00c04fd430c8', '서울특별시', '강남구', '압구정동', '06001', '압구정로 102, 로데오빌딩 5층', 'palmistry-apgujeong', 37.5264, 127.0286),

-- Hongdae/Mapo locations  
('6ba7b812-9dad-11d1-80b4-00c04fd430c8', '서울특별시', '마포구', '홍익로2가', '04039', '홍익로5길 20, 홍대타워 4층', 'crystal-hongdae', 37.5563, 126.9236),
('6ba7b813-9dad-11d1-80b4-00c04fd430c8', '서울특별시', '마포구', '서교동', '04053', '양화로 160, 메세나폴리스 8층', 'fortune-seogyo', 37.5564, 126.9226),

-- Myeongdong/Jung-gu locations
('6ba7b814-9dad-11d1-80b4-00c04fd430c8', '서울특별시', '중구', '명동2가', '04536', '명동8길 29, 명동센트럴 6층', 'dream-myeongdong', 37.5636, 126.9834),
('6ba7b815-9dad-11d1-80b4-00c04fd430c8', '서울특별시', '중구', '을지로3가', '04548', '을지로15길 7, 을지빌딩 7층', 'wisdom-euljiro', 37.5665, 126.9910),

-- Gangbuk locations
('6ba7b816-9dad-11d1-80b4-00c04fd430c8', '서울특별시', '종로구', '인사동', '03148', '인사동길 35, 인사아트센터 3층', 'traditional-insadong', 37.5717, 126.9854),
('6ba7b817-9dad-11d1-80b4-00c04fd430c8', '서울특별시', '성북구', '성신여대입구역', '02844', '동소문로 47, 성신빌딩 2층', 'lunar-seongbuk', 37.5928, 127.0163),

-- Gangdong locations
('6ba7b818-9dad-11d1-80b4-00c04fd430c8', '서울특별시', '송파구', '잠실동', '05551', '올림픽로 240, 롯데월드타워 스카이31 31층', 'sky-jamsil', 37.5125, 127.1025),
('6ba7b819-9dad-11d1-80b4-00c04fd430c8', '서울특별시', '강동구', '천호동', '05288', '천중로 206, 천호역 메가박스 6층', 'star-cheonho', 37.5387, 127.1237)
ON CONFLICT (id) DO NOTHING;

-- Now add diverse Korean fortune telling services
INSERT INTO locations (
  id,
  title,
  subtitle,
  description,
  main_image_url,
  gallery_images,
  icon,
  features,
  base_price,
  price_description,
  currency,
  rating,
  review_count,
  phone,
  email,
  address,
  website,
  business_hours,
  tagline,
  image_url,
  price_krw,
  activity_level,
  skill_level,
  max_guests_total,
  min_age,
  place_id
) VALUES 

-- 1. 타로카드 점술소 (Tarot Reading)
('a1b2c3d4-e5f6-7890-1234-567890abcdef', 
'미스틱 타로 살롱', 
'신비로운 타로카드로 미래를 읽어드립니다',
'프랑스에서 직수입한 정통 타로카드와 30년 경력의 타로마스터가 함께하는 프리미엄 타로 상담소입니다. 연애, 진로, 인간관계 등 궁금한 모든 것을 타로카드를 통해 명확히 해답을 찾아드립니다.',
'https://images.unsplash.com/photo-1578662996442-48f60103fc96?w=800&h=600&fit=crop&auto=format',
ARRAY['https://images.unsplash.com/photo-1578662996442-48f60103fc96?w=800&h=600&fit=crop&auto=format', 'https://images.unsplash.com/photo-1551431009-a802eeec77b1?w=800&h=600&fit=crop&auto=format'],
'🔮',
'[{"id": 1, "icon": "🃏", "text": "정통 프랑스 타로카드"}, {"id": 2, "icon": "✨", "text": "30년 경력 타로마스터"}, {"id": 3, "icon": "💕", "text": "연애운 특화 상담"}, {"id": 4, "icon": "🎯", "text": "구체적 해답 제시"}]',
45000, '30분 상담 기준', 'KRW', 4.8, 89,
'02-555-0101', 'info@mystictarot.kr', '서울특별시 강남구 신사동 가로수길 45-7, 2층',
'https://mystictarot.kr', '매일 11:00 - 22:00',
'신비로운 타로카드로 미래를 읽어드립니다', 'https://images.unsplash.com/photo-1578662996442-48f60103fc96?w=800&h=600&fit=crop&auto=format',
45000, 'LIGHT', 'BEGINNER', 2, 18, 'f47ac10b-58cc-4372-a567-0e02b2c3d479'),

-- 2. 전통 사주명리학원 (Traditional Saju)
('b2c3d4e5-f6a7-8901-2345-678901bcdefb',
'동양명리 사주궁합소',
'천년 역사의 정통 사주명리학',
'조선왕조 궁중 명리학을 계승한 정통 사주명리 전문가가 직접 상담해드립니다. 사주팔자, 궁합, 택일, 개명까지 전통 명리학의 모든 영역을 다루며, 정확하고 체계적인 해석으로 인생의 방향을 제시합니다.',
'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=800&h=600&fit=crop&auto=format',
ARRAY['https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=800&h=600&fit=crop&auto=format', 'https://images.unsplash.com/photo-1578662015594-3020cd5c58ae?w=800&h=600&fit=crop&auto=format'],
'📜',
'[{"id": 1, "icon": "🏛️", "text": "조선왕조 궁중 명리학"}, {"id": 2, "icon": "📚", "text": "40년 명리학 연구"}, {"id": 3, "icon": "💑", "text": "궁합 전문 상담"}, {"id": 4, "icon": "🌟", "text": "개명 및 택일 서비스"}]',
80000, '60분 정밀 상담', 'KRW', 4.9, 156,
'02-555-0202', 'info@sajugoong.kr', '서울특별시 강남구 청담동 청담로 89, 청담빌딩 3층',
'https://sajugoong.kr', '평일 09:00 - 18:00, 토요일 10:00 - 16:00',
'천년 역사의 정통 사주명리학', 'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=800&h=600&fit=crop&auto=format',
80000, 'MODERATE', 'ADVANCED', 3, 20, '6ba7b810-9dad-11d1-80b4-00c04fd430c8'),

-- 3. 수상술 관상학원 (Palm & Face Reading)
('c3d4e5f6-a7b8-9012-3456-789012cdefab',
'관상수상 운명학당',
'손금과 얼굴로 읽는 당신의 운명',
'손금(수상)과 관상을 통해 선천적 운명과 후천적 노력의 방향을 제시하는 전문 상담소입니다. 중국 정통 관상학과 인도 수상술을 결합하여 정확하고 실용적인 조언을 드립니다.',
'https://images.unsplash.com/photo-1559827260-dc66d52bef19?w=800&h=600&fit=crop&auto=format',
ARRAY['https://images.unsplash.com/photo-1559827260-dc66d52bef19?w=800&h=600&fit=crop&auto=format', 'https://images.unsplash.com/photo-1588392382834-a891154bca4d?w=800&h=600&fit=crop&auto=format'],
'✋',
'[{"id": 1, "icon": "👁️", "text": "정통 중국 관상학"}, {"id": 2, "icon": "🤲", "text": "인도 수상술 전문"}, {"id": 3, "icon": "🔍", "text": "즉석 현장 분석"}, {"id": 4, "icon": "💡", "text": "실용적 조언 제공"}]',
35000, '20분 신속 분석', 'KRW', 4.6, 73,
'02-555-0303', 'info@palmface.kr', '서울특별시 강남구 압구정동 압구정로 102, 로데오빌딩 5층',
'https://palmface.kr', '매일 12:00 - 21:00',
'손금과 얼굴로 읽는 당신의 운명', 'https://images.unsplash.com/photo-1559827260-dc66d52bef19?w=800&h=600&fit=crop&auto=format',
35000, 'LIGHT', 'BEGINNER', 1, 16, '6ba7b811-9dad-11d1-80b4-00c04fd430c8'),

-- 4. 크리스탈 힐링 센터 (Crystal Healing & Fortune)
('d4e5f6a7-b8c9-0123-4567-890123defabc',
'크리스탈 오라클 센터',
'수정의 에너지로 정화하고 미래를 봅니다',
'천연 수정과 보석의 에너지를 활용한 오라클 리딩과 힐링 서비스를 제공합니다. 각종 수정의 파워와 오라클 카드를 통해 영적 성장과 내면의 평화를 찾아드립니다.',
'https://images.unsplash.com/photo-1518709268805-4e9042af2176?w=800&h=600&fit=crop&auto=format',
ARRAY['https://images.unsplash.com/photo-1518709268805-4e9042af2176?w=800&h=600&fit=crop&auto=format', 'https://images.unsplash.com/photo-1583212292454-1fe6229603b7?w=800&h=600&fit=crop&auto=format'],
'💎',
'[{"id": 1, "icon": "💎", "text": "천연 크리스탈 컬렉션"}, {"id": 2, "icon": "🌈", "text": "오라클 카드 리딩"}, {"id": 3, "icon": "🧘", "text": "힐링 테라피"}, {"id": 4, "icon": "✨", "text": "영적 성장 가이드"}]',
50000, '45분 힐링 포함', 'KRW', 4.7, 112,
'02-555-0404', 'info@crystal-oracle.kr', '서울특별시 마포구 홍익로2가 홍익로5길 20, 홍대타워 4층',
'https://crystal-oracle.kr', '화-일 14:00 - 22:00 (월요일 휴무)',
'수정의 에너지로 정화하고 미래를 봅니다', 'https://images.unsplash.com/photo-1518709268805-4e9042af2176?w=800&h=600&fit=crop&auto=format',
50000, 'LIGHT', 'BEGINNER', 4, 18, '6ba7b812-9dad-11d1-80b4-00c04fd430c8'),

-- 5. 음양오행 풍수지리원 (Feng Shui & Five Elements)
('e5f6a7b8-c9d0-1234-5678-901234efabcd',
'음양오행 풍수원',
'집과 사무실의 기운을 바꿔드립니다',
'음양오행 이론에 바탕한 전문 풍수 상담과 인테리어 컨설팅을 제공합니다. 집, 사무실, 상가의 기운을 분석하고 최적의 배치와 인테리어 방향을 제시하여 운세 상승을 도와드립니다.',
'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=800&h=600&fit=crop&auto=format',
ARRAY['https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=800&h=600&fit=crop&auto=format', 'https://images.unsplash.com/photo-1590736969955-71cc94901144?w=800&h=600&fit=crop&auto=format'],
'🏮',
'[{"id": 1, "icon": "🧭", "text": "정통 풍수지리학"}, {"id": 2, "icon": "🏠", "text": "실거주지 방문 상담"}, {"id": 3, "icon": "💼", "text": "사업장 풍수 컨설팅"}, {"id": 4, "icon": "📐", "text": "맞춤 인테리어 제안"}]',
120000, '현장 방문 2시간', 'KRW', 4.8, 67,
'02-555-0505', 'info@yinyang-fengshui.kr', '서울특별시 마포구 서교동 양화로 160, 메세나폴리스 8층',
'https://yinyang-fengshui.kr', '평일 10:00 - 18:00 (주말 예약 상담)',
'집과 사무실의 기운을 바꿔드립니다', 'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=800&h=600&fit=crop&auto=format',
120000, 'MODERATE', 'INTERMEDIATE', 2, 25, '6ba7b813-9dad-11d1-80b4-00c04fd430c8'),

-- 6. 꿈해몽 전문원 (Dream Interpretation)
('f6a7b8c9-d0e1-2345-6789-012345fabcde',
'몽해몽 꿈해석소',
'당신의 꿈이 전하는 메시지를 들려드립니다',
'프로이트와 융의 정신분석학과 동양의 전통 꿈해몽학을 결합한 전문 꿈해석 서비스입니다. 반복되는 꿈, 예지몽, 악몽의 의미를 과학적이고 영적인 관점에서 해석해드립니다.',
'https://images.unsplash.com/photo-1462331940025-496dfbfc7564?w=800&h=600&fit=crop&auto=format',
ARRAY['https://images.unsplash.com/photo-1462331940025-496dfbfc7564?w=800&h=600&fit=crop&auto=format', 'https://images.unsplash.com/photo-1444927714506-8492d94b5ba0?w=800&h=600&fit=crop&auto=format'],
'🌙',
'[{"id": 1, "icon": "💭", "text": "정신분석학 기반"}, {"id": 2, "icon": "📖", "text": "전통 꿈해몽학"}, {"id": 3, "icon": "🔮", "text": "예지몽 분석 전문"}, {"id": 4, "icon": "🌟", "text": "개인별 꿈 일기 관리"}]',
40000, '40분 상담', 'KRW', 4.5, 94,
'02-555-0606', 'info@dreamoracle.kr', '서울특별시 중구 명동2가 명동8길 29, 명동센트럴 6층',
'https://dreamoracle.kr', '매일 13:00 - 21:00',
'당신의 꿈이 전하는 메시지를 들려드립니다', 'https://images.unsplash.com/photo-1462331940025-496dfbfc7564?w=800&h=600&fit=crop&auto=format',
40000, 'LIGHT', 'BEGINNER', 1, 16, '6ba7b814-9dad-11d1-80b4-00c04fd430c8'),

-- 7. 지혜의 주역점소 (I-Ching Divination)
('a7b8c9d0-e1f2-3456-7890-123456abcdef',
'주역오행 지혜원',
'3000년 주역의 지혜로 인생을 밝혀드립니다',
'중국 고전 주역(易經)의 64괘를 통해 현재 상황을 분석하고 미래의 변화를 예측하는 동양 최고의 점술입니다. 복잡한 인생 문제에 대한 명확한 방향과 행동 지침을 제시합니다.',
'https://images.unsplash.com/photo-1578662996442-48f60103fc96?w=800&h=600&fit=crop&auto=format',
ARRAY['https://images.unsplash.com/photo-1578662996442-48f60103fc96?w=800&h=600&fit=crop&auto=format', 'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=800&h=600&fit=crop&auto=format'],
'☯️',
'[{"id": 1, "icon": "📿", "text": "정통 주역 64괘"}, {"id": 2, "icon": "🎋", "text": "신전 방식 점술"}, {"id": 3, "icon": "🔍", "text": "상세한 괘사 해석"}, {"id": 4, "icon": "🗓️", "text": "시기별 행동 지침"}]',
60000, '50분 정밀 해석', 'KRW', 4.9, 128,
'02-555-0707', 'info@iching-wisdom.kr', '서울특별시 중구 을지로3가 을지로15길 7, 을지빌딩 7층',
'https://iching-wisdom.kr', '평일 10:00 - 19:00, 토요일 11:00 - 17:00',
'3000년 주역의 지혜로 인생을 밝혀드립니다', 'https://images.unsplash.com/photo-1578662996442-48f60103fc96?w=800&h=600&fit=crop&auto=format',
60000, 'MODERATE', 'INTERMEDIATE', 2, 21, '6ba7b815-9dad-11d1-80b4-00c04fd430c8'),

-- 8. 전통차와 명상 점술소 (Traditional Tea & Meditation Divination)
('b8c9d0e1-f2a3-4567-8901-234567bcdef8',
'다선일체 명상원',
'차 한 잔의 여유 속에서 찾는 내면의 목소리',
'전통 차문화와 명상을 결합한 독특한 점술 공간입니다. 정성스럽게 우린 차를 마시며 마음을 정화하고, 명상을 통해 내면의 지혜와 직감을 깨워 인생의 답을 찾아드립니다.',
'https://images.unsplash.com/photo-1544787219-7f47ccb76574?w=800&h=600&fit=crop&auto=format',
ARRAY['https://images.unsplash.com/photo-1544787219-7f47ccb76574?w=800&h=600&fit=crop&auto=format', 'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=800&h=600&fit=crop&auto=format'],
'🍵',
'[{"id": 1, "icon": "🍃", "text": "명품 전통차"}, {"id": 2, "icon": "🧘‍♀️", "text": "가이드 명상"}, {"id": 3, "icon": "🕯️", "text": "힐링 공간"}, {"id": 4, "icon": "💆‍♀️", "text": "차크라 정화"}]',
55000, '90분 풀코스', 'KRW', 4.6, 85,
'02-555-0808', 'info@tea-meditation.kr', '서울특별시 종로구 인사동 인사동길 35, 인사아트센터 3층',
'https://tea-meditation.kr', '매일 11:00 - 20:00',
'차 한 잔의 여유 속에서 찾는 내면의 목소리', 'https://images.unsplash.com/photo-1544787219-7f47ccb76574?w=800&h=600&fit=crop&auto=format',
55000, 'LIGHT', 'BEGINNER', 3, 18, '6ba7b816-9dad-11d1-80b4-00c04fd430c8'),

-- 9. 달과 별자리 점성술원 (Lunar & Astrology)
('c9d0e1f2-a3b4-5678-9012-345678cdefab',
'문스타 점성술원',
'달의 리듬과 별자리가 알려주는 우주의 메시지',
'서양 점성술과 동양의 음력 체계를 결합한 특별한 점술 서비스입니다. 개인의 출생 차트 분석, 달의 위상에 따른 운세, 별자리별 운명 해석을 통해 우주적 관점에서 인생을 조망합니다.',
'https://images.unsplash.com/photo-1519608487953-e999c86e7455?w=800&h=600&fit=crop&auto=format',
ARRAY['https://images.unsplash.com/photo-1519608487953-e999c86e7455?w=800&h=600&fit=crop&auto=format', 'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=800&h=600&fit=crop&auto=format'],
'🌟',
'[{"id": 1, "icon": "🌙", "text": "음력 체계 점술"}, {"id": 2, "icon": "⭐", "text": "서양 점성술"}, {"id": 3, "icon": "🔭", "text": "출생 차트 분석"}, {"id": 4, "icon": "🌌", "text": "우주적 관점 해석"}]',
65000, '60분 차트 분석', 'KRW', 4.7, 103,
'02-555-0909', 'info@moonstar-astro.kr', '서울특별시 성북구 성신여대입구역 동소문로 47, 성신빌딩 2층',
'https://moonstar-astro.kr', '화-토 15:00 - 22:00 (일, 월 휴무)',
'달의 리듬과 별자리가 알려주는 우주의 메시지', 'https://images.unsplash.com/photo-1519608487953-e999c86e7455?w=800&h=600&fit=crop&auto=format',
65000, 'MODERATE', 'INTERMEDIATE', 2, 20, '6ba7b817-9dad-11d1-80b4-00c04fd430c8'),

-- 10. 하늘에서 내린 운명학원 (Sky Fortune Reading)
('d0e1f2a3-b4c5-6789-0123-456789defabc',
'하늘궁전 운명원',
'하늘의 뜻을 읽어 지상의 길을 밝힙니다',
'높은 곳에서 내려다보는 하늘의 시선으로 인생 전체를 조망하는 특별한 점술 서비스입니다. 31층 하늘 위 전망과 함께 광활한 우주의 기운을 받아 더욱 정확하고 깊이 있는 운세를 제공합니다.',
'https://images.unsplash.com/photo-1480497490787-505ec076689f?w=800&h=600&fit=crop&auto=format',
ARRAY['https://images.unsplash.com/photo-1480497490787-505ec076689f?w=800&h=600&fit=crop&auto=format', 'https://images.unsplash.com/photo-1519608487953-e999c86e7455?w=800&h=600&fit=crop&auto=format'],
'🏯',
'[{"id": 1, "icon": "🌅", "text": "31층 하늘 뷰"}, {"id": 2, "icon": "☁️", "text": "우주 기운 점술"}, {"id": 3, "icon": "🗻", "text": "인생 전체 조망"}, {"id": 4, "icon": "🎆", "text": "프리미엄 공간"}]',
150000, '90분 VIP 상담', 'KRW', 4.9, 76,
'02-555-1010', 'info@sky-palace.kr', '서울특별시 송파구 잠실동 올림픽로 240, 롯데월드타워 스카이31 31층',
'https://sky-palace.kr', '매일 10:00 - 20:00 (완전 예약제)',
'하늘의 뜻을 읽어 지상의 길을 밝힙니다', 'https://images.unsplash.com/photo-1480497490787-505ec076689f?w=800&h=600&fit=crop&auto=format',
150000, 'LIGHT', 'BEGINNER', 1, 25, '6ba7b818-9dad-11d1-80b4-00c04fd430c8'),

-- 11. 별자리 운세 카페 (Star Sign Cafe)
('e1f2a3b4-c5d6-7890-1234-567890efabcd',
'스타사인 카페',
'맛있는 커피와 함께 즐기는 가벼운 별자리 운세',
'캐주얼하고 편안한 분위기에서 즐기는 별자리 운세 카페입니다. 특제 커피나 차를 마시며 오늘의 운세, 주간 운세, 월간 운세를 확인하고, 간단한 타로나 별자리 상담을 받을 수 있습니다.',
'https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?w=800&h=600&fit=crop&auto=format',
ARRAY['https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?w=800&h=600&fit=crop&auto=format', 'https://images.unsplash.com/photo-1583212292454-1fe6229603b7?w=800&h=600&fit=crop&auto=format'],
'☕',
'[{"id": 1, "icon": "☕", "text": "프리미엄 커피"}, {"id": 2, "icon": "🌟", "text": "12별자리 운세"}, {"id": 3, "icon": "🍰", "text": "디저트 포함"}, {"id": 4, "icon": "📱", "text": "SNS 운세 제공"}]',
25000, '30분 + 음료', 'KRW', 4.4, 142,
'02-555-1111', 'info@starsign-cafe.kr', '서울특별시 강동구 천호동 천중로 206, 천호역 메가박스 6층',
'https://starsign-cafe.kr', '매일 10:00 - 23:00',
'맛있는 커피와 함께 즐기는 가벼운 별자리 운세', 'https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?w=800&h=600&fit=crop&auto=format',
25000, 'LIGHT', 'BEGINNER', 4, 16, '6ba7b819-9dad-11d1-80b4-00c04fd430c8')

ON CONFLICT (id) DO NOTHING;

-- Verify the data was inserted
SELECT 'Korean Fortune Telling Services added successfully!' as status;
SELECT COUNT(*) as total_services FROM locations;
SELECT title, base_price, rating FROM locations WHERE id != '550e8400-e29b-41d4-a716-446655440002' ORDER BY base_price;
