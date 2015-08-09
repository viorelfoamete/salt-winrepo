# both 32-bit (x86) AND a 64-bit (AMD64) installer available
{% set PROGRAM_FILES = "C:\Program Files" %}
infrarecorder:
  0.53:
    full_name: 'InfraRecorder'
    {% if grains['cpuarch'] == 'AMD64' %}
    msiexec: True
    installer: 'http://cznic.dl.sourceforge.net/project/infrarecorder/InfraRecorder/0.53/ir053_x64.msi'
    install_flags: '/qn /norestart'
    uninstaller: 'http://cznic.dl.sourceforge.net/project/infrarecorder/InfraRecorder/0.53/ir053_x64.msi' 
    uninstall_flags: '/qn /norestart'
    {% elif grains['cpuarch'] == 'x86' %}
    installer: 'http://heanet.dl.sourceforge.net/project/infrarecorder/InfraRecorder/0.53/ir053.exe'
    install_flags: '/S'    
    uninstaller: '{{ PROGRAM_FILES }}\InfraRecorder\uninstall.exe'
    uninstall_flags: '/S'
    {% endif %}
    locale: en_US
    reboot: False
