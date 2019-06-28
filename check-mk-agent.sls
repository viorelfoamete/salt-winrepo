check-mk-agent:
  latest:
    full_name: 'Check_MK Agent'
    installer: 'https://checkmk.qsol.ro/monitor/check_mk/agents/windows/check_mk_agent.exe'
    install_flags: '/S'
    uninstaller: '%ProgramFiles%\check_mk\uninstall.exe'
    uninstall_flags: '/S'
    msiexec: False
    locale: en_US
    reboot: False
