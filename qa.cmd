
IF [%1] == [] GOTO error
IF %~1 == "" GOTO error

IF [%2] == [] GOTO error
IF %~2 == "" GOTO error

IF [%3] == [] GOTO default
IF %~3 == "" GOTO default


GOTO withTags

:withTags

npm run ntlm-proxy && (cypress-tags run --reporter cypress-multi-reporters --reporter-options configFile=reporter-config.json -e QAUser="%~1",QAPassword="%~2",Environment="CiCd" TAGS="%~3" & ntlm-proxy-exit)

GOTO exit

:default

npm run ntlm-proxy && (cypress-ntlm run -e QAUser="%~1",QAPassword="%~2",Environment="CiCd" & ntlm-proxy-exit)

GOTO exit

:error
echo "No automation credentials supplied!"

:exit
echo "Done!"
