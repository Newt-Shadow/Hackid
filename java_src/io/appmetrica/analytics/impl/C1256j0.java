package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.logger.appmetrica.internal.ImportantLogger;
/* renamed from: io.appmetrica.analytics.impl.j0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1256j0 {

    /* renamed from: a  reason: collision with root package name */
    public final En f19820a;

    /* renamed from: b  reason: collision with root package name */
    public volatile Boolean f19821b;

    /* renamed from: c  reason: collision with root package name */
    public Na f19822c;

    /* renamed from: d  reason: collision with root package name */
    public Oa f19823d;

    public C1256j0() {
        this(new En());
    }

    public final synchronized Na a(Context context, C1260j4 c1260j4) {
        if (this.f19822c == null) {
            if (a(context)) {
                this.f19822c = new C1306l0();
            } else {
                this.f19822c = new C1232i0(context, c1260j4);
            }
        }
        return this.f19822c;
    }

    public C1256j0(En en) {
        this.f19820a = en;
    }

    public final boolean a(Context context) {
        Boolean bool = this.f19821b;
        if (bool == null) {
            synchronized (this) {
                bool = this.f19821b;
                if (bool == null) {
                    this.f19820a.getClass();
                    Boolean valueOf = Boolean.valueOf(!En.a(context));
                    this.f19821b = valueOf;
                    if (valueOf.booleanValue()) {
                        ImportantLogger.INSTANCE.info("AppMetrica", "User is locked. So use stubs. Events will not be sent.", new Object[0]);
                    }
                    bool = valueOf;
                }
            }
        }
        return bool.booleanValue();
    }
}
