package com.pravera.flutter_foreground_task.service;

import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.util.Log;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import sb.d;
/* loaded from: classes.dex */
public final class RestartReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public static final a f9514a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private static final String f9515b = RestartReceiver.class.getSimpleName();

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context) {
            int i10;
            m.e(context, "context");
            Intent intent = new Intent(context, RestartReceiver.class);
            if (Build.VERSION.SDK_INT >= 31) {
                i10 = 301989888;
            } else {
                i10 = 268435456;
            }
            PendingIntent broadcast = PendingIntent.getBroadcast(context, 300, intent, i10);
            Object systemService = context.getSystemService("alarm");
            m.c(systemService, "null cannot be cast to non-null type android.app.AlarmManager");
            ((AlarmManager) systemService).cancel(broadcast);
        }

        public final void b(Context context, int i10) {
            int i11;
            m.e(context, "context");
            long currentTimeMillis = System.currentTimeMillis() + i10;
            Intent intent = new Intent(context, RestartReceiver.class);
            int i12 = Build.VERSION.SDK_INT;
            if (i12 >= 31) {
                i11 = 167772160;
            } else {
                i11 = 134217728;
            }
            PendingIntent broadcast = PendingIntent.getBroadcast(context, 300, intent, i11);
            Object systemService = context.getSystemService("alarm");
            m.c(systemService, "null cannot be cast to non-null type android.app.AlarmManager");
            AlarmManager alarmManager = (AlarmManager) systemService;
            if (i12 >= 31 && d.f29579a.b(context)) {
                alarmManager.setAlarmClock(new AlarmManager.AlarmClockInfo(currentTimeMillis, broadcast), broadcast);
            } else {
                alarmManager.set(0, currentTimeMillis, broadcast);
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (context == null || qb.a.f28650b.a(context).b()) {
            return;
        }
        Object systemService = context.getSystemService("activity");
        m.c(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        List<ActivityManager.RunningServiceInfo> runningServices = ((ActivityManager) systemService).getRunningServices(Integer.MAX_VALUE);
        m.d(runningServices, "getRunningServices(...)");
        List<ActivityManager.RunningServiceInfo> list = runningServices;
        boolean z10 = false;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (m.a(((ActivityManager.RunningServiceInfo) it.next()).service.getClassName(), ForegroundService.class.getName())) {
                    z10 = true;
                    break;
                }
            }
        }
        if (z10) {
            return;
        }
        boolean d10 = d.f29579a.d(context);
        if (Build.VERSION.SDK_INT >= 31 && !d10) {
            Log.w(f9515b, "Turn off battery optimization to restart service in the background.");
        }
        Intent intent2 = new Intent(context, ForegroundService.class);
        qb.a.f28650b.b(context, "com.pravera.flutter_foreground_task.action.restart");
        androidx.core.content.a.o(context, intent2);
    }
}
