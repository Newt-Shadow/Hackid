package com.yandex.metrica.impl.ob;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
/* renamed from: com.yandex.metrica.impl.ob.b0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0420b0 {

    /* renamed from: a  reason: collision with root package name */
    private final BroadcastReceiver f11991a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f11992b = false;

    /* renamed from: com.yandex.metrica.impl.ob.b0$a */
    /* loaded from: classes2.dex */
    public static class a {
        public C0420b0 a(BroadcastReceiver broadcastReceiver) {
            return new C0420b0(broadcastReceiver);
        }
    }

    public C0420b0(BroadcastReceiver broadcastReceiver) {
        this.f11991a = broadcastReceiver;
    }

    public synchronized Intent a(Context context, IntentFilter intentFilter) {
        Intent intent;
        try {
            intent = context.registerReceiver(this.f11991a, intentFilter);
            try {
                this.f11992b = true;
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            intent = null;
        }
        return intent;
    }

    public synchronized void a(Context context) {
        if (this.f11992b) {
            try {
                context.unregisterReceiver(this.f11991a);
                this.f11992b = false;
            } catch (Throwable unused) {
            }
        }
    }
}
