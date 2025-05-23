<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
</head>
<body>
  <h2>🔐 OpenStack 기반 Resource Hijacking 공격 탐지 및 대응 방안</h2>
  <p><strong>프로젝트명:</strong> OpenStack Resource Hijacking Detection & Mitigation</p>
  <p><strong>팀명:</strong> K-Shield Jr. 10기 - Team F-04</p>
  <p><strong>팀원:</strong> 공종욱, 박민지, 이영준, 정지원, 지동혁</p><br>

  <h2>📌 프로젝트 개요</h2>
  <p>
    본 프로젝트는 OpenStack 환경에서 발생 가능한 Resource Hijacking 공격을 탐지하고 이에 대응하기 위한 방안을 모색한 보안 실습 프로젝트입니다.
    Rocke 해킹 그룹의 실제 공격 시나리오를 분석하고, 가상의 클라우드 환경을 구축하여 실습을 진행하였습니다.
  </p><br>

  <h2>🧭 연구 구성</h2>
  <ul>
    <li>MITRE ATT&CK 기반 공격 그룹 및 TTP 분석</li>
    <li>Rocke 그룹을 참고한 Resource Hijacking 공격 재현</li>
    <li>공격 탐지를 위한 로그 수집 및 분석</li>
    <li>공격 대응 방안 도출 (Mitigation & Detection)</li>
    <li>리소스 상태 가시화를 위한 보안 대시보드 설계</li>
  </ul><br>

  <h2>🔎 사용 기술 및 도구</h2>
  <ul>
    <li>Cloud Platform: OpenStack</li>
    <li>공격 프레임워크: MITRE ATT&CK Matrix (IaaS)</li>
    <li>로그 수집 및 분석: ELK Stack (Elasticsearch, Logstash, Kibana)</li>
    <li>백도어 도구: Python, Backdoorcreator</li>
    <li>공격 코드 배포: GitHub C2 서버</li>
  </ul><br>

  <h2>🧪 주요 실습 단계</h2>
  <ol>
    <li>공개된 Web 서버의 취약점(예: Struts2 CVE-2017-5638)을 이용한 최초 침투</li>
    <li>백도어 및 마이너 설치 → 권한 상승 및 지속성 확보(cron, init.d)</li>
    <li>내부망 스캔 후 Lateral Movement(SSH, FTP 활용)</li>
    <li>OpenStack 인스턴스에 마이너 프로그램 설치 및 실행</li>
    <li>시스템 리소스 탈취 및 탐지 우회 (로그 삭제, 프로세스 은닉)</li>
  </ol><br>

  <h2>🛡️ 탐지 및 대응 방안 (MITRE 기반)</h2>
  <ul>
    <li>초기 침투 차단: WAF, 소프트웨어 패치 관리, 네트워크 세분화</li>
    <li>스크립트 실행 탐지: python 프로세스 모니터링, 실행 로그 수집</li>
    <li>지속성 탐지: init.d 등록, crontab 분석</li>
    <li>탐지 회피 차단: 파일 권한 변경 탐지, 로그 삭제 탐지</li>
    <li>내부 이동 탐지: SSH 접속 기록, known_hosts, 포트 스캐닝 감시</li>
    <li>자원 탈취 탐지: CPU/메모리 이상 감지, 마이너 프로세스 식별</li>
  </ul><br>

  <h2>📊 대시보드 제안</h2>
  <p>ELK 기반 시각화 환경을 통해 실시간 리소스 사용량, 의심 프로세스 및 트래픽을 모니터링할 수 있는 대시보드 제공</p><br>


  <h2>✅ 결론</h2>
  <p>
    본 프로젝트를 통해 클라우드 환경에서 발생 가능한 Resource Hijacking 공격을 실제로 시뮬레이션하고,
    이에 대한 효과적인 탐지 및 대응 전략을 수립할 수 있었습니다.
    보안 위협을 조기에 식별하고 사전에 방어할 수 있는 체계를 마련하는 것이 중요함을 확인하였습니다.
  </p>
</body>
</html>
