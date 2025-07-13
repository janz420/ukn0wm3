destruct() {
    SCRIPT_PATH="$(realpath "$0")"
    rm -f "$SCRIPT_PATH"
    exit 1
}
trap destruct INT TERM EXIT
#!/bin/sh
while true; do
  echo "QuickReboot & ClearCache Application..."
  echo "___________________________________________"
    echo 0 > /proc/ppm/enabled
    echo 0 0 > /proc/ppm/policy_status
    echo 1 0 > /proc/ppm/policy_status
    echo 2 0 > /proc/ppm/policy_status
    echo 3 0 > /proc/ppm/policy_status
    echo 4 0 > /proc/ppm/policy_status
    echo 5 0 > /proc/ppm/policy_status
    echo 6 0 > /proc/ppm/policy_status
    echo 7 0 > /proc/ppm/policy_status
    echo 8 0 > /proc/ppm/policy_status
    echo 9 0 > /proc/ppm/policy_status
    echo 0 > /sys/kernel/oppo_display/cabc
    echo 0 > /proc/sys/kernel/panic
    echo 0 > /proc/sys/kernel/panic_on_oops
    echo 0 > /proc/sys/kernel/panic_on_rcu_stall
    echo 0 > /proc/sys/kernel/panic_on_warn
    echo 0 > /sys/module/kernel/parameters/panic
    echo 0 > /sys/module/kernel/parameters/panic_on_warn
    echo 0 > /sys/module/kernel/parameters/panic_on_oops
    echo 0 0 0 0 > /proc/sys/kernel/printk
    echo "off" > /proc/sys/kernel/printk_devkmsg
    echo "Y" > /sys/module/printk/parameters/console_suspend
    echo "N" > /sys/module/printk/parameters/cpu
    echo "Y" > /sys/module/printk/parameters/ignore_loglevel
    echo "N" > /sys/module/printk/parameters/pid
    echo "N" > /sys/module/printk/parameters/time
    echo 0 > /sys/kernel/printk_mode/printk_mode
    echo 0-1 > /dev/cpuset/background/cpus
    echo 0-2 > /dev/cpuset/system-background/cpus
    echo 1-2 > /dev/cpuset/audio-app/cpus
    setprop debug.sf.early_phase_offset_ns 16666
    setprop debug.sf.early_app_phase_offset_ns 16666
    setprop debug.sf.early_gl_phase_offset_ns 36666
    setprop debug.sf.early_gl_app_phase_offset_ns 15666
    setprop debug.sf.high_fps_early_phase_offset_ns 61666
    setprop debug.sf.high_fps_early_gl_phase_offset_ns 656666
    setprop debug.sf.high_fps_late_app_phase_offset_ns 16666
    setprop debug.sf.phase_offset_threshold_for_next_vsync_ns 16666
    setprop debug.sf.perf_fps_early_gl_phase_offset_ns 16666
  find /storage/emulated/0/Android/data/*/cache/* -delete
  find /data/data/*/cache/* -delete

  for app in $(su -c cmd package list packages | cut -f 2 -d ":"); do
    if [ ! "$app" = me.weishu.kernelsu ] && [ ! "$app" = io.github.huskydg.magisk ] && [ ! "$app" = com.topjohnwu.magisk ] && [ ! "$app" = io.github.huskydg.magisk ] && [ ! "$app" = com.android.shell ]; then

      if su -c "cmd activity force-stop $app" > /dev/null 2>&1; then
        state='Done'
      else
        state='FAILED'
      fi
      echo "Restarting $app... $state"
    fi
   done
   echo && echo "___________________________________________"
   echo '====.QuickReboot Done!.====';date
   exit
done
destruct
