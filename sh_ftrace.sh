#!/bin/bash

echo $1 > /sys/kernel/tracing/set_ftrace_pid
echo $1 > /sys/kernel/tracing/set_event_pid
echo 30720 > /sys/kernel/tracing/buffer_size_kb
echo 1 > /sys/kernel/tracing/options/funcgraph-abstime
echo 1 > /sys/kernel/tracing/options/funcgraph-cpu
echo 1 > /sys/kernel/tracing/options/funcgraph-proc
echo 1 > /sys/kernel/tracing/options/function-fork
echo 1 > /sys/kernel/tracing/options/event-fork
echo function_graph > /sys/kernel/tracing/current_tracer
echo 1 > /sys/kernel/tracing/events/syscalls/enable
echo 1 > /sys/kernel/tracing/events/signal/enable
echo 1 > /sys/kernel/tracing/events/sched/sched_waking/enable
echo 1 > /sys/kernel/tracing/events/sched/sched_wakeup_new/enable
echo 1 > /sys/kernel/tracing/events/sched/sched_wakeup/enable
echo 1 > /sys/kernel/tracing/events/sched/sched_wait_task/enable
echo 1 > /sys/kernel/tracing/events/sched/sched_switch/enable
echo 1 > /sys/kernel/tracing/events/sched/sched_process_wait/enable
echo 1 > /sys/kernel/tracing/events/sched/sched_process_fork/enable
echo 1 > /sys/kernel/tracing/events/sched/sched_process_exec/enable

