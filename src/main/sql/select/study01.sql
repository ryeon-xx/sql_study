-- 평균 일일 대여 요금 구하기

-- 문제 : CAR_RENTAL_COMPANY_CAR 테이블에서 자동차 종류가 'SUV'인
-- 자동차들의 평균 일일 대여 요금을 출력하는 SQL문을 작성해주세요.
-- 이때 평균 일일 대여 요금은 소수 첫 번째 자리에서 반올림하고,
-- 컬럼명은 AVERAGE_FEE 로 지정해주세요.

-- 원문 참고 : https://school.programmers.co.kr/learn/courses/30/lessons/151136


-- 테이블 정보 : CAR_RENTAL_COMPANY_CAR
-- 테이블 컬럼 : CAR_ID, CAR_TYPE, DAILY_FEE, OPTIONS


-- 먼저 SUV인 전체 컬럼 조회
SELECT * FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE = 'SUV';

-- 평균 일일 대여 요금 컬럼 출력
SELECT AVG(DAILY_FEE) AS AVERAGE_FEE
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE = 'SUV';

-- 평균 일일 대여 요금 소수 첫 번째 자리에서 반올림
SELECT ROUND(AVG(DAILY_FEE)) AS AVERAGE_FEE
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE = 'SUV';

-- 테스트 결과: AVERAGE_FEE = 93727 (정상 동작 확인)