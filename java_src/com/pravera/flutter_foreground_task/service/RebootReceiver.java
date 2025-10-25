package com.pravera.flutter_foreground_task.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import kotlin.jvm.internal.m;
import qb.e;
import sb.b;
/* loaded from: classes.dex */
public final class RebootReceiver extends BroadcastReceiver {
    private final void a(Context context) {
        Intent intent = new Intent(context, ForegroundService.class);
        qb.a.f28650b.b(context, "com.pravera.flutter_foreground_task.action.reboot");
        androidx.core.content.a.o(context, intent);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (context == null || intent == null || b.f29577a.a(context) || qb.a.f28650b.a(context).b()) {
            return;
        }
        e b10 = e.f28664f.b(context);
        if ((m.a(intent.getAction(), "android.intent.action.BOOT_COMPLETED") || m.a(intent.getAction(), "android.intent.action.QUICKBOOT_POWERON")) && b10.c()) {
            a(context);
        } else if (m.a(intent.getAction(), "android.intent.action.MY_PACKAGE_REPLACED") && b10.d()) {
            a(context);
        }
    }
}
