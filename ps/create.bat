@echo off
for /F "usebackq eol=# tokens=*" %%A in ("manifests.txt") do (
    copy program.manifest "%%A.manifest"
)
