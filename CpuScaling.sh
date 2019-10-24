#!/usr/bin/env bash
# /**************************************************************************
#  *
#  * init modify  : 2019年10月25日(金)
#  * modify       : 2019年10月25日(金)
#  * summary      : Raspi3B+ CentOS7 環境の CPU を最大パフォーマンス状態にする。
#  *              : アーキテクチャ: armv7l
#  *              : Model name:ARMv7 Processor rev 4 (v7l)
#  *              : Cron Execute Example : */1 * * * * /root/script/CpuScaling.sh > /root/script/CpuScaling.log 2>&1
#  *
# **************************************************************************/

cpuMsg=($(cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor))
cpuSize=$(echo ${#cpuMsg[@]})
scaleSizeStr=performance
scriptDir=$(dirname $0)
selfScriptName=CpuScaling.sh
selfScriptDir=$scriptDir
selfScriptExe=$selfScriptDir/$selfScriptName
scaleCpu=

for((i = 0; i < $cpuSize; i++)); do
    scaleCpu=/sys/devices/system/cpu/cpu$i/cpufreq/scaling_governor

    if [ "$(cat $scaleCpu)" != "$scaleSizeStr" ]; then
        echo "CPU スケーリング実行前・・・"
        echo "CPU"$i" : "${cpuMsg[$(( i ))]}
        echo "performance" > $scaleCpu
        echo "CPU スケーリング実行・・・"
        echo "CPU"$i" : "$(cat $scaleCpu)
        echo "CPU スケーリング実行終了しました。"

        #$selfScriptExe

    fi

    if [ "$(( $cpuSize - ( $cpuSize - 0 ) ))" = "$i" ]; then
        echo "<----result---->"

    fi

    echo $(cat $scaleCpu)

    if [ "$(( $cpuSize - 1 ))" = "$i" ]; then
        echo "<----result----/>"

    fi

done

echo $cpuSize
