package com.pravera.flutter_foreground_task.service;

import android.content.Context;
import android.content.Intent;
import java.util.Map;
import kotlin.jvm.internal.m;
import pb.d;
import pb.e;
import qb.b;
import qb.g;
import qb.i;
/* loaded from: classes.dex */
public final class a {
    public final boolean a() {
        return ((Boolean) ForegroundService.f9495m.b().getValue()).booleanValue();
    }

    public final void b(Context context) {
        m.e(context, "context");
        if (a()) {
            Intent intent = new Intent(context, ForegroundService.class);
            qb.a.f28650b.b(context, "com.pravera.flutter_foreground_task.action.api_restart");
            androidx.core.content.a.o(context, intent);
            return;
        }
        throw new e();
    }

    public final void c(Object obj) {
        if (obj != null) {
            ForegroundService.f9495m.c(obj);
        }
    }

    public final void d(Context context, Object obj) {
        Map map;
        m.e(context, "context");
        if (!a()) {
            Intent intent = new Intent(context, ForegroundService.class);
            if (obj instanceof Map) {
                map = (Map) obj;
            } else {
                map = null;
            }
            qb.a.f28650b.b(context, "com.pravera.flutter_foreground_task.action.api_start");
            i.f28683m.c(context, map);
            qb.e.f28664f.c(context, map);
            b.f28652b.c(context, map);
            g.f28674f.c(context, map);
            androidx.core.content.a.o(context, intent);
            return;
        }
        throw new d();
    }

    public final void e(Context context) {
        m.e(context, "context");
        if (a()) {
            Intent intent = new Intent(context, ForegroundService.class);
            qb.a.f28650b.b(context, "com.pravera.flutter_foreground_task.action.api_stop");
            i.f28683m.a(context);
            qb.e.f28664f.a(context);
            b.f28652b.a(context);
            g.f28674f.a(context);
            androidx.core.content.a.o(context, intent);
            return;
        }
        throw new e();
    }

    public final void f(Context context, Object obj) {
        Map map;
        m.e(context, "context");
        if (a()) {
            Intent intent = new Intent(context, ForegroundService.class);
            if (obj instanceof Map) {
                map = (Map) obj;
            } else {
                map = null;
            }
            qb.a.f28650b.b(context, "com.pravera.flutter_foreground_task.action.api_update");
            qb.e.f28664f.d(context, map);
            b.f28652b.d(context, map);
            g.f28674f.d(context, map);
            androidx.core.content.a.o(context, intent);
            return;
        }
        throw new e();
    }
}
