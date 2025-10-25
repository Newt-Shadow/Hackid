package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.ResultReceiver;
import com.yandex.metrica.CounterConfiguration;
/* renamed from: com.yandex.metrica.impl.ob.i2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0597i2 {

    /* renamed from: a  reason: collision with root package name */
    private final String f12586a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f12587b;

    /* renamed from: c  reason: collision with root package name */
    private final CounterConfiguration.b f12588c;

    /* renamed from: d  reason: collision with root package name */
    private final C0646k2 f12589d;

    public C0597i2(String str, Context context, CounterConfiguration.b bVar, C0646k2 c0646k2) {
        this.f12586a = str;
        this.f12587b = context;
        int ordinal = bVar.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                this.f12588c = null;
            } else {
                this.f12588c = CounterConfiguration.b.SELF_DIAGNOSTIC_MANUAL;
            }
        } else {
            this.f12588c = CounterConfiguration.b.SELF_DIAGNOSTIC_MAIN;
        }
        this.f12589d = c0646k2;
    }

    public void a(C0445c0 c0445c0) {
        if (this.f12588c != null) {
            try {
                String str = this.f12586a;
                CounterConfiguration counterConfiguration = new CounterConfiguration();
                synchronized (counterConfiguration) {
                    counterConfiguration.n(str);
                }
                counterConfiguration.d(this.f12588c);
                this.f12589d.a(c0445c0.b(new Q1(new A3(this.f12587b, (ResultReceiver) null), counterConfiguration, null).c()));
            } catch (Throwable unused) {
            }
        }
    }
}
