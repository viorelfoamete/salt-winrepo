check-mk-agent-msi:
  latest:
    full_name: 'Check_MK Agent'
    installer: 'https://checkmk.qsol.ro/monitor/check_mk/agents/windows/check_mk_agent.msi'
    install_flags: '/qn /norestart'
    uninstaller: 'https://checkmk.qsol.ro/monitor/check_mk/agents/windows/check_mk_agent.msi'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
