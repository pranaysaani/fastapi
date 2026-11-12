#!/usr/bin/env bash
root="$(pwd)"
target="${1:-all}"
status=0
mkdir -p "$root/codemd-reports" "$root/.codemd/test-results"
if [ "$target" = "finalize" ]; then
  if [ ! -f "$root/.codemd/test-results/0.exit" ]; then echo "CODEMD_TIMEOUT 0"; echo "CODEMD_RESULT 0 124"; status=1; else code="$(cat "$root/.codemd/test-results/0.exit")"; [ "$code" -eq 0 ] || status=1; fi
  if [ ! -f "$root/.codemd/test-results/1.exit" ]; then echo "CODEMD_TIMEOUT 1"; echo "CODEMD_RESULT 1 124"; status=1; else code="$(cat "$root/.codemd/test-results/1.exit")"; [ "$code" -eq 0 ] || status=1; fi
  if [ ! -f "$root/.codemd/test-results/2.exit" ]; then echo "CODEMD_TIMEOUT 2"; echo "CODEMD_RESULT 2 124"; status=1; else code="$(cat "$root/.codemd/test-results/2.exit")"; [ "$code" -eq 0 ] || status=1; fi
  if [ ! -f "$root/.codemd/test-results/3.exit" ]; then echo "CODEMD_TIMEOUT 3"; echo "CODEMD_RESULT 3 124"; status=1; else code="$(cat "$root/.codemd/test-results/3.exit")"; [ "$code" -eq 0 ] || status=1; fi
  if [ ! -f "$root/.codemd/test-results/4.exit" ]; then echo "CODEMD_TIMEOUT 4"; echo "CODEMD_RESULT 4 124"; status=1; else code="$(cat "$root/.codemd/test-results/4.exit")"; [ "$code" -eq 0 ] || status=1; fi
  if [ ! -f "$root/.codemd/test-results/5.exit" ]; then echo "CODEMD_TIMEOUT 5"; echo "CODEMD_RESULT 5 124"; status=1; else code="$(cat "$root/.codemd/test-results/5.exit")"; [ "$code" -eq 0 ] || status=1; fi
  if [ ! -f "$root/.codemd/test-results/6.exit" ]; then echo "CODEMD_TIMEOUT 6"; echo "CODEMD_RESULT 6 124"; status=1; else code="$(cat "$root/.codemd/test-results/6.exit")"; [ "$code" -eq 0 ] || status=1; fi
  if [ ! -f "$root/.codemd/test-results/7.exit" ]; then echo "CODEMD_TIMEOUT 7"; echo "CODEMD_RESULT 7 124"; status=1; else code="$(cat "$root/.codemd/test-results/7.exit")"; [ "$code" -eq 0 ] || status=1; fi
  if [ ! -f "$root/.codemd/test-results/8.exit" ]; then echo "CODEMD_TIMEOUT 8"; echo "CODEMD_RESULT 8 124"; status=1; else code="$(cat "$root/.codemd/test-results/8.exit")"; [ "$code" -eq 0 ] || status=1; fi
  if [ ! -f "$root/.codemd/test-results/9.exit" ]; then echo "CODEMD_TIMEOUT 9"; echo "CODEMD_RESULT 9 124"; status=1; else code="$(cat "$root/.codemd/test-results/9.exit")"; [ "$code" -eq 0 ] || status=1; fi
  if [ ! -f "$root/.codemd/test-results/10.exit" ]; then echo "CODEMD_TIMEOUT 10"; echo "CODEMD_RESULT 10 124"; status=1; else code="$(cat "$root/.codemd/test-results/10.exit")"; [ "$code" -eq 0 ] || status=1; fi
  if [ ! -f "$root/.codemd/test-results/11.exit" ]; then echo "CODEMD_TIMEOUT 11"; echo "CODEMD_RESULT 11 124"; status=1; else code="$(cat "$root/.codemd/test-results/11.exit")"; [ "$code" -eq 0 ] || status=1; fi
  if [ ! -f "$root/.codemd/test-results/12.exit" ]; then echo "CODEMD_TIMEOUT 12"; echo "CODEMD_RESULT 12 124"; status=1; else code="$(cat "$root/.codemd/test-results/12.exit")"; [ "$code" -eq 0 ] || status=1; fi
  if [ ! -f "$root/.codemd/test-results/13.exit" ]; then echo "CODEMD_TIMEOUT 13"; echo "CODEMD_RESULT 13 124"; status=1; else code="$(cat "$root/.codemd/test-results/13.exit")"; [ "$code" -eq 0 ] || status=1; fi
  if [ ! -f "$root/.codemd/test-results/14.exit" ]; then echo "CODEMD_TIMEOUT 14"; echo "CODEMD_RESULT 14 124"; status=1; else code="$(cat "$root/.codemd/test-results/14.exit")"; [ "$code" -eq 0 ] || status=1; fi
  if [ ! -f "$root/.codemd/test-results/15.exit" ]; then echo "CODEMD_TIMEOUT 15"; echo "CODEMD_RESULT 15 124"; status=1; else code="$(cat "$root/.codemd/test-results/15.exit")"; [ "$code" -eq 0 ] || status=1; fi
  if [ ! -f "$root/.codemd/test-results/16.exit" ]; then echo "CODEMD_TIMEOUT 16"; echo "CODEMD_RESULT 16 124"; status=1; else code="$(cat "$root/.codemd/test-results/16.exit")"; [ "$code" -eq 0 ] || status=1; fi
  if [ ! -f "$root/.codemd/test-results/17.exit" ]; then echo "CODEMD_TIMEOUT 17"; echo "CODEMD_RESULT 17 124"; status=1; else code="$(cat "$root/.codemd/test-results/17.exit")"; [ "$code" -eq 0 ] || status=1; fi
  if [ ! -f "$root/.codemd/test-results/18.exit" ]; then echo "CODEMD_TIMEOUT 18"; echo "CODEMD_RESULT 18 124"; status=1; else code="$(cat "$root/.codemd/test-results/18.exit")"; [ "$code" -eq 0 ] || status=1; fi
  if [ ! -f "$root/.codemd/test-results/19.exit" ]; then echo "CODEMD_TIMEOUT 19"; echo "CODEMD_RESULT 19 124"; status=1; else code="$(cat "$root/.codemd/test-results/19.exit")"; [ "$code" -eq 0 ] || status=1; fi
  exit "$status"
fi
if [ "$target" = "all" ] || [ "$target" = "0" ]; then { echo '### CodeMD: changed-line coverage'; echo; echo 'Lines this change touched that the tests ran. The raw reports are in the **codemd-coverage-reports** zip under Artifacts, kept 90 days.'; echo; echo '| File | Changed lines run | Not run |'; echo '|---|---|---|'; } >> "${GITHUB_STEP_SUMMARY:-/dev/null}"; fi
if [ "$target" = "all" ] || [ "$target" = "0" ]; then
( cd . && eval 'uv run --with pytest --with coverage python -m coverage run -m pytest -q docs_src/app_testing/app_a/test_main.py' ); code=$?
echo "$code" > "$root/.codemd/test-results/0.exit"
echo "CODEMD_RESULT 0 $code"; [ "$code" -eq 0 ] || status=1
( cd . && eval 'uv run --with pytest --with coverage python -m coverage json -q -o .codemd-coverage.json' ) >/dev/null 2>&1
( cd . && [ -f .codemd-coverage.json ] && cp .codemd-coverage.json "$root/codemd-reports/"0-coverage.py-codemd-coverage.json ) || true
( cd . && eval 'uv run --with pytest --with coverage python -m coverage xml -q -o .codemd-cobertura.xml' >/dev/null 2>&1 && [ -s .codemd-cobertura.xml ] && cp .codemd-cobertura.xml "$root/codemd-reports/0-cobertura.xml" ) || true
( cd . && python3 "$root/.codemd/coverage_summary.py" coverage.py .codemd-coverage.json docs_src/app_testing/app_a/main.py 1 8 0 1,2,3,4,5,6,7,8 ) || true
( cd . && python3 "$root/.codemd/coverage_summary.py" coverage.py .codemd-coverage.json docs_src/app_testing/app_a/main.py 7 8 0.f0 7,8 ) || true
fi
if [ "$target" = "all" ] || [ "$target" = "1" ]; then
( cd . && eval 'uv run --with pytest --with coverage python -m pytest -q docs_src/app_testing/app_a/test_main.py' ); code=$?
echo "$code" > "$root/.codemd/test-results/1.exit"
echo "CODEMD_RESULT 1 $code"; [ "$code" -eq 0 ] || status=1
fi
if [ "$target" = "all" ] || [ "$target" = "2" ]; then
( cd . && eval 'uv run --with pytest --with coverage python -m coverage run -m pytest -q docs_src/app_testing/app_b/test_main.py' ); code=$?
echo "$code" > "$root/.codemd/test-results/2.exit"
echo "CODEMD_RESULT 2 $code"; [ "$code" -eq 0 ] || status=1
( cd . && eval 'uv run --with pytest --with coverage python -m coverage json -q -o .codemd-coverage.json' ) >/dev/null 2>&1
( cd . && [ -f .codemd-coverage.json ] && cp .codemd-coverage.json "$root/codemd-reports/"2-coverage.py-codemd-coverage.json ) || true
( cd . && eval 'uv run --with pytest --with coverage python -m coverage xml -q -o .codemd-cobertura.xml' >/dev/null 2>&1 && [ -s .codemd-cobertura.xml ] && cp .codemd-cobertura.xml "$root/codemd-reports/2-cobertura.xml" ) || true
( cd . && python3 "$root/.codemd/coverage_summary.py" coverage.py .codemd-coverage.json docs_src/app_testing/app_b/main.py 1 38 2 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38 ) || true
( cd . && python3 "$root/.codemd/coverage_summary.py" coverage.py .codemd-coverage.json docs_src/app_testing/app_b/main.py 23 28 2.f0 23,24,25,26,27,28 ) || true
( cd . && python3 "$root/.codemd/coverage_summary.py" coverage.py .codemd-coverage.json docs_src/app_testing/app_b/main.py 32 38 2.f1 32,33,34,35,36,37,38 ) || true
fi
if [ "$target" = "all" ] || [ "$target" = "3" ]; then
( cd . && eval 'uv run --with pytest --with coverage python -m pytest -q docs_src/app_testing/app_b/test_main.py' ); code=$?
echo "$code" > "$root/.codemd/test-results/3.exit"
echo "CODEMD_RESULT 3 $code"; [ "$code" -eq 0 ] || status=1
fi
if [ "$target" = "all" ] || [ "$target" = "4" ]; then
( cd . && eval 'uv run --with pytest --with coverage python -m coverage run -m pytest -q docs_src/app_testing/app_b_non_an/test_main.py' ); code=$?
echo "$code" > "$root/.codemd/test-results/4.exit"
echo "CODEMD_RESULT 4 $code"; [ "$code" -eq 0 ] || status=1
( cd . && eval 'uv run --with pytest --with coverage python -m coverage json -q -o .codemd-coverage.json' ) >/dev/null 2>&1
( cd . && [ -f .codemd-coverage.json ] && cp .codemd-coverage.json "$root/codemd-reports/"4-coverage.py-codemd-coverage.json ) || true
( cd . && eval 'uv run --with pytest --with coverage python -m coverage xml -q -o .codemd-cobertura.xml' >/dev/null 2>&1 && [ -s .codemd-cobertura.xml ] && cp .codemd-cobertura.xml "$root/codemd-reports/4-cobertura.xml" ) || true
( cd . && python3 "$root/.codemd/coverage_summary.py" coverage.py .codemd-coverage.json docs_src/app_testing/app_b_non_an/main.py 1 36 4 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36 ) || true
( cd . && python3 "$root/.codemd/coverage_summary.py" coverage.py .codemd-coverage.json docs_src/app_testing/app_b_non_an/main.py 21 26 4.f0 21,22,23,24,25,26 ) || true
( cd . && python3 "$root/.codemd/coverage_summary.py" coverage.py .codemd-coverage.json docs_src/app_testing/app_b_non_an/main.py 30 36 4.f1 30,31,32,33,34,35,36 ) || true
fi
if [ "$target" = "all" ] || [ "$target" = "5" ]; then
( cd . && eval 'uv run --with pytest --with coverage python -m pytest -q docs_src/app_testing/app_b_non_an/test_main.py' ); code=$?
echo "$code" > "$root/.codemd/test-results/5.exit"
echo "CODEMD_RESULT 5 $code"; [ "$code" -eq 0 ] || status=1
fi
if [ "$target" = "all" ] || [ "$target" = "6" ]; then
( cd . && eval 'uv run --with pytest --with coverage python -m coverage run -m pytest -q docs_src/async_tests/app_a/test_main.py' ); code=$?
echo "$code" > "$root/.codemd/test-results/6.exit"
echo "CODEMD_RESULT 6 $code"; [ "$code" -eq 0 ] || status=1
( cd . && eval 'uv run --with pytest --with coverage python -m coverage json -q -o .codemd-coverage.json' ) >/dev/null 2>&1
( cd . && [ -f .codemd-coverage.json ] && cp .codemd-coverage.json "$root/codemd-reports/"6-coverage.py-codemd-coverage.json ) || true
( cd . && eval 'uv run --with pytest --with coverage python -m coverage xml -q -o .codemd-cobertura.xml' >/dev/null 2>&1 && [ -s .codemd-cobertura.xml ] && cp .codemd-cobertura.xml "$root/codemd-reports/6-cobertura.xml" ) || true
( cd . && python3 "$root/.codemd/coverage_summary.py" coverage.py .codemd-coverage.json docs_src/async_tests/app_a/main.py 1 8 6 1,2,3,4,5,6,7,8 ) || true
( cd . && python3 "$root/.codemd/coverage_summary.py" coverage.py .codemd-coverage.json docs_src/async_tests/app_a/main.py 7 8 6.f0 7,8 ) || true
fi
if [ "$target" = "all" ] || [ "$target" = "7" ]; then
( cd . && eval 'uv run --with pytest --with coverage python -m pytest -q docs_src/async_tests/app_a/test_main.py' ); code=$?
echo "$code" > "$root/.codemd/test-results/7.exit"
echo "CODEMD_RESULT 7 $code"; [ "$code" -eq 0 ] || status=1
fi
if [ "$target" = "all" ] || [ "$target" = "8" ]; then
( cd . && eval 'uv run --with pytest --with coverage python -m coverage run -m pytest -q docs_src/settings/app02/test_main.py' ); code=$?
echo "$code" > "$root/.codemd/test-results/8.exit"
echo "CODEMD_RESULT 8 $code"; [ "$code" -eq 0 ] || status=1
( cd . && eval 'uv run --with pytest --with coverage python -m coverage json -q -o .codemd-coverage.json' ) >/dev/null 2>&1
( cd . && [ -f .codemd-coverage.json ] && cp .codemd-coverage.json "$root/codemd-reports/"8-coverage.py-codemd-coverage.json ) || true
( cd . && eval 'uv run --with pytest --with coverage python -m coverage xml -q -o .codemd-cobertura.xml' >/dev/null 2>&1 && [ -s .codemd-cobertura.xml ] && cp .codemd-cobertura.xml "$root/codemd-reports/8-cobertura.xml" ) || true
( cd . && python3 "$root/.codemd/coverage_summary.py" coverage.py .codemd-coverage.json docs_src/settings/app02/main.py 1 22 8 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22 ) || true
( cd . && python3 "$root/.codemd/coverage_summary.py" coverage.py .codemd-coverage.json docs_src/settings/app02/main.py 12 13 8.f0 12,13 ) || true
( cd . && python3 "$root/.codemd/coverage_summary.py" coverage.py .codemd-coverage.json docs_src/settings/app02/main.py 17 22 8.f1 17,18,19,20,21,22 ) || true
fi
if [ "$target" = "all" ] || [ "$target" = "9" ]; then
( cd . && eval 'uv run --with pytest --with coverage python -m pytest -q docs_src/settings/app02/test_main.py' ); code=$?
echo "$code" > "$root/.codemd/test-results/9.exit"
echo "CODEMD_RESULT 9 $code"; [ "$code" -eq 0 ] || status=1
fi
if [ "$target" = "all" ] || [ "$target" = "10" ]; then
( cd . && eval 'uv run --with pytest --with coverage python -m coverage run -m pytest -q docs_src/settings/app02_non_an/test_main.py' ); code=$?
echo "$code" > "$root/.codemd/test-results/10.exit"
echo "CODEMD_RESULT 10 $code"; [ "$code" -eq 0 ] || status=1
( cd . && eval 'uv run --with pytest --with coverage python -m coverage json -q -o .codemd-coverage.json' ) >/dev/null 2>&1
( cd . && [ -f .codemd-coverage.json ] && cp .codemd-coverage.json "$root/codemd-reports/"10-coverage.py-codemd-coverage.json ) || true
( cd . && eval 'uv run --with pytest --with coverage python -m coverage xml -q -o .codemd-cobertura.xml' >/dev/null 2>&1 && [ -s .codemd-cobertura.xml ] && cp .codemd-cobertura.xml "$root/codemd-reports/10-cobertura.xml" ) || true
( cd . && python3 "$root/.codemd/coverage_summary.py" coverage.py .codemd-coverage.json docs_src/settings/app02_non_an/main.py 1 21 10 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21 ) || true
( cd . && python3 "$root/.codemd/coverage_summary.py" coverage.py .codemd-coverage.json docs_src/settings/app02_non_an/main.py 11 12 10.f0 11,12 ) || true
( cd . && python3 "$root/.codemd/coverage_summary.py" coverage.py .codemd-coverage.json docs_src/settings/app02_non_an/main.py 16 21 10.f1 16,17,18,19,20,21 ) || true
fi
if [ "$target" = "all" ] || [ "$target" = "11" ]; then
( cd . && eval 'uv run --with pytest --with coverage python -m pytest -q docs_src/settings/app02_non_an/test_main.py' ); code=$?
echo "$code" > "$root/.codemd/test-results/11.exit"
echo "CODEMD_RESULT 11 $code"; [ "$code" -eq 0 ] || status=1
fi
if [ "$target" = "all" ] || [ "$target" = "12" ]; then
( cd . && eval 'uv run --with pytest --with coverage python -m coverage run -m pytest -q tests/test_compat.py' ); code=$?
echo "$code" > "$root/.codemd/test-results/12.exit"
echo "CODEMD_RESULT 12 $code"; [ "$code" -eq 0 ] || status=1
( cd . && eval 'uv run --with pytest --with coverage python -m coverage json -q -o .codemd-coverage.json' ) >/dev/null 2>&1
( cd . && [ -f .codemd-coverage.json ] && cp .codemd-coverage.json "$root/codemd-reports/"12-coverage.py-codemd-coverage.json ) || true
( cd . && eval 'uv run --with pytest --with coverage python -m coverage xml -q -o .codemd-cobertura.xml' >/dev/null 2>&1 && [ -s .codemd-cobertura.xml ] && cp .codemd-cobertura.xml "$root/codemd-reports/12-cobertura.xml" ) || true
( cd . && python3 "$root/.codemd/coverage_summary.py" coverage.py .codemd-coverage.json fastapi/_compat/shared.py 1 222 12 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222 ) || true
( cd . && python3 "$root/.codemd/coverage_summary.py" coverage.py .codemd-coverage.json fastapi/_compat/shared.py 156 168 12.f0 156,157,158,159,160,161,162,163,164,165,166,167,168 ) || true
( cd . && python3 "$root/.codemd/coverage_summary.py" coverage.py .codemd-coverage.json fastapi/_compat/shared.py 171 183 12.f1 171,172,173,174,175,176,177,178,179,180,181,182,183 ) || true
( cd . && python3 "$root/.codemd/coverage_summary.py" coverage.py .codemd-coverage.json fastapi/_compat/v2.py 1 500 12.1 ) || true
( cd . && python3 "$root/.codemd/coverage_summary.py" coverage.py .codemd-coverage.json fastapi/_compat/v2.py 138 139 12.1.f0 138,139 ) || true
( cd . && python3 "$root/.codemd/coverage_summary.py" coverage.py .codemd-coverage.json fastapi/_compat/v2.py 371 381 12.1.f1 371,372,373,374,375,376,377,378,379,380,381 ) || true
fi
if [ "$target" = "all" ] || [ "$target" = "13" ]; then
( cd . && eval 'uv run --with pytest --with coverage python -m coverage run -m pytest -q tests/test_concurrency.py' ); code=$?
echo "$code" > "$root/.codemd/test-results/13.exit"
echo "CODEMD_RESULT 13 $code"; [ "$code" -eq 0 ] || status=1
( cd . && eval 'uv run --with pytest --with coverage python -m coverage json -q -o .codemd-coverage.json' ) >/dev/null 2>&1
( cd . && [ -f .codemd-coverage.json ] && cp .codemd-coverage.json "$root/codemd-reports/"13-coverage.py-codemd-coverage.json ) || true
( cd . && eval 'uv run --with pytest --with coverage python -m coverage xml -q -o .codemd-cobertura.xml' >/dev/null 2>&1 && [ -s .codemd-cobertura.xml ] && cp .codemd-cobertura.xml "$root/codemd-reports/13-cobertura.xml" ) || true
( cd . && python3 "$root/.codemd/coverage_summary.py" coverage.py .codemd-coverage.json fastapi/concurrency.py 1 46 13 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46 ) || true
( cd . && python3 "$root/.codemd/coverage_summary.py" coverage.py .codemd-coverage.json fastapi/concurrency.py 18 46 13.f0 18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46 ) || true
fi
if [ "$target" = "all" ] || [ "$target" = "14" ]; then
( cd . && eval 'uv run --with pytest --with coverage python -m coverage run -m pytest -q scripts/tests/test_remove_unused_docs_src.py' ); code=$?
echo "$code" > "$root/.codemd/test-results/14.exit"
echo "CODEMD_RESULT 14 $code"; [ "$code" -eq 0 ] || status=1
( cd . && eval 'uv run --with pytest --with coverage python -m coverage json -q -o .codemd-coverage.json' ) >/dev/null 2>&1
( cd . && [ -f .codemd-coverage.json ] && cp .codemd-coverage.json "$root/codemd-reports/"14-coverage.py-codemd-coverage.json ) || true
( cd . && eval 'uv run --with pytest --with coverage python -m coverage xml -q -o .codemd-cobertura.xml' >/dev/null 2>&1 && [ -s .codemd-cobertura.xml ] && cp .codemd-cobertura.xml "$root/codemd-reports/14-cobertura.xml" ) || true
( cd . && python3 "$root/.codemd/coverage_summary.py" coverage.py .codemd-coverage.json scripts/docs.py 1 760 14 ) || true
( cd . && python3 "$root/.codemd/coverage_summary.py" coverage.py .codemd-coverage.json scripts/docs.py 625 674 14.f0 625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,644,645,646,647,648,649,650,651,652,653,654,655,656,657,658,659,660,661,662,663,664,665,666,667,668,669,670,671,672,673,674 ) || true
fi
if [ "$target" = "all" ] || [ "$target" = "15" ]; then
( cd . && eval 'uv run --with pytest --with coverage python -m coverage run -m pytest -q tests/test_prepare_release.py' ); code=$?
echo "$code" > "$root/.codemd/test-results/15.exit"
echo "CODEMD_RESULT 15 $code"; [ "$code" -eq 0 ] || status=1
( cd . && eval 'uv run --with pytest --with coverage python -m coverage json -q -o .codemd-coverage.json' ) >/dev/null 2>&1
( cd . && [ -f .codemd-coverage.json ] && cp .codemd-coverage.json "$root/codemd-reports/"15-coverage.py-codemd-coverage.json ) || true
( cd . && eval 'uv run --with pytest --with coverage python -m coverage xml -q -o .codemd-cobertura.xml' >/dev/null 2>&1 && [ -s .codemd-cobertura.xml ] && cp .codemd-cobertura.xml "$root/codemd-reports/15-cobertura.xml" ) || true
( cd . && python3 "$root/.codemd/coverage_summary.py" coverage.py .codemd-coverage.json scripts/prepare_release.py 1 216 15 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216 ) || true
( cd . && python3 "$root/.codemd/coverage_summary.py" coverage.py .codemd-coverage.json scripts/prepare_release.py 46 52 15.f0 46,47,48,49,50,51,52 ) || true
( cd . && python3 "$root/.codemd/coverage_summary.py" coverage.py .codemd-coverage.json scripts/prepare_release.py 167 180 15.f1 167,168,169,170,171,172,173,174,175,176,177,178,179,180 ) || true
( cd . && python3 "$root/.codemd/coverage_summary.py" coverage.py .codemd-coverage.json scripts/prepare_release.py 86 101 15.f2 86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101 ) || true
( cd . && python3 "$root/.codemd/coverage_summary.py" coverage.py .codemd-coverage.json scripts/prepare_release.py 105 163 15.f3 105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163 ) || true
( cd . && python3 "$root/.codemd/coverage_summary.py" coverage.py .codemd-coverage.json scripts/prepare_release.py 64 83 15.f4 64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83 ) || true
fi
if [ "$target" = "all" ] || [ "$target" = "16" ]; then
( cd . && eval 'uv run --with pytest --with coverage python -m pytest -q scripts/tests/test_remove_unused_docs_src.py' ); code=$?
echo "$code" > "$root/.codemd/test-results/16.exit"
echo "CODEMD_RESULT 16 $code"; [ "$code" -eq 0 ] || status=1
fi
if [ "$target" = "all" ] || [ "$target" = "17" ]; then
( cd . && eval 'uv run --with pytest --with coverage python -m pytest -q tests/test_concurrency.py' ); code=$?
echo "$code" > "$root/.codemd/test-results/17.exit"
echo "CODEMD_RESULT 17 $code"; [ "$code" -eq 0 ] || status=1
fi
if [ "$target" = "all" ] || [ "$target" = "18" ]; then
( cd . && eval 'uv run --with pytest --with coverage python -m pytest -q tests/test_frontend.py' ); code=$?
echo "$code" > "$root/.codemd/test-results/18.exit"
echo "CODEMD_RESULT 18 $code"; [ "$code" -eq 0 ] || status=1
fi
if [ "$target" = "all" ] || [ "$target" = "19" ]; then
( cd . && eval 'uv run --with pytest --with coverage python -m pytest -q tests/test_prepare_release.py' ); code=$?
echo "$code" > "$root/.codemd/test-results/19.exit"
echo "CODEMD_RESULT 19 $code"; [ "$code" -eq 0 ] || status=1
fi
exit "$status"
