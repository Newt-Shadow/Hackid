package io.appmetrica.analytics.impl;

import android.content.Context;
/* loaded from: classes2.dex */
public abstract class Bi {

    /* renamed from: a  reason: collision with root package name */
    protected final Context f18017a;

    /* renamed from: b  reason: collision with root package name */
    public final String f18018b;

    /* renamed from: c  reason: collision with root package name */
    public final String f18019c;

    public Bi(Context context, String str, String str2) {
        this.f18017a = context;
        this.f18018b = str;
        this.f18019c = str2;
    }

    public final Object a() {
        int identifier = this.f18017a.getResources().getIdentifier(this.f18018b, this.f18019c, this.f18017a.getPackageName());
        if (identifier != 0) {
            try {
                return a(identifier);
            } catch (Throwable unused) {
                return null;
            }
        }
        return null;
    }

    public abstract Object a(int i10);
}
