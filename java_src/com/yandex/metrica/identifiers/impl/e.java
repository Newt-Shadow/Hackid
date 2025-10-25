package com.yandex.metrica.identifiers.impl;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.IBinder;
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private final d f9660a;

    /* renamed from: b  reason: collision with root package name */
    private final id.l f9661b;

    /* renamed from: c  reason: collision with root package name */
    private final String f9662c;

    /* renamed from: d  reason: collision with root package name */
    private final w f9663d;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public e(android.content.Intent r8, id.l r9, java.lang.String r10) {
        /*
            r7 = this;
            java.lang.String r0 = "intent"
            kotlin.jvm.internal.m.e(r8, r0)
            java.lang.String r0 = "converter"
            kotlin.jvm.internal.m.e(r9, r0)
            java.lang.String r0 = "serviceShortTag"
            kotlin.jvm.internal.m.e(r10, r0)
            com.yandex.metrica.identifiers.impl.d r2 = new com.yandex.metrica.identifiers.impl.d
            r2.<init>(r8, r10)
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r0 = "[AdInServiceConnectionController-"
            r8.append(r0)
            r8.append(r10)
            r0 = 93
            r8.append(r0)
            java.lang.String r4 = r8.toString()
            com.yandex.metrica.identifiers.impl.w r6 = new com.yandex.metrica.identifiers.impl.w
            r6.<init>()
            r1 = r7
            r3 = r9
            r5 = r10
            r1.<init>(r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.identifiers.impl.e.<init>(android.content.Intent, id.l, java.lang.String):void");
    }

    public final Object a(Context context) {
        ResolveInfo resolveInfo;
        kotlin.jvm.internal.m.e(context, "context");
        Intent a10 = this.f9660a.a();
        kotlin.jvm.internal.m.d(a10, "connection.intent");
        this.f9663d.getClass();
        IBinder iBinder = null;
        try {
            resolveInfo = context.getPackageManager().resolveService(a10, 0);
        } catch (Throwable unused) {
            resolveInfo = null;
        }
        if (resolveInfo != null) {
            try {
                if (this.f9660a.c(context)) {
                    iBinder = this.f9660a.b(3000L);
                }
            } catch (Throwable unused2) {
            }
            if (iBinder != null) {
                return this.f9661b.invoke(iBinder);
            }
            throw new j("could not bind to " + this.f9662c + " services");
        }
        throw new m("could not resolve " + this.f9662c + " services");
    }

    public final void b(Context context) {
        kotlin.jvm.internal.m.e(context, "context");
        try {
            this.f9660a.d(context);
        } catch (Throwable unused) {
        }
    }

    public e(d connection, id.l converter, String tag, String serviceShortTag, w safePackageManager) {
        kotlin.jvm.internal.m.e(connection, "connection");
        kotlin.jvm.internal.m.e(converter, "converter");
        kotlin.jvm.internal.m.e(tag, "tag");
        kotlin.jvm.internal.m.e(serviceShortTag, "serviceShortTag");
        kotlin.jvm.internal.m.e(safePackageManager, "safePackageManager");
        this.f9660a = connection;
        this.f9661b = converter;
        this.f9662c = serviceShortTag;
        this.f9663d = safePackageManager;
    }
}
