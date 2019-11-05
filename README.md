<!-- TOC -->

- [Raspi3B_Plus_armv7l_CentOS7_CpuScaling](#raspi3b_plus_armv7l_centos7_cpuscaling)
    - [セットアップ](#セットアップ)
        - [Shell 実行権限付加](#shell-実行権限付加)
        - [Cron 定期実行設定](#cron-定期実行設定)

<!-- /TOC -->
# Raspi3B_Plus_armv7l_CentOS7_CpuScaling
## セットアップ
### Shell 実行権限付加
- git clone https://github.com/webmedi/Raspi3B_Plus_armv7l_CentOS7_CpuScaling.git
- chmod 700 ./Raspi3B_Plus_armv7l_CentOS7_CpuScaling/CpuScaling.sh

### Cron 定期実行設定
- Example Setting : */1 * * * * /root/script/CpuScaling.sh > /root/script/CpuScaling.log 2>&1