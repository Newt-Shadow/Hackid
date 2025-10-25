package com.yandex.metrica.impl.ob;

import android.content.Context;
/* loaded from: classes2.dex */
public abstract class V1<T> {

    /* renamed from: a  reason: collision with root package name */
    protected final Context f11630a;

    /* renamed from: b  reason: collision with root package name */
    private final String f11631b;

    /* renamed from: c  reason: collision with root package name */
    private final String f11632c;

    public V1(Context context, String str, String str2) {
        this.f11630a = context;
        this.f11631b = str;
        this.f11632c = str2;
    }

    public T a() {
        int identifier = this.f11630a.getResources().getIdentifier(this.f11631b, this.f11632c, this.f11630a.getPackageName());
        if (identifier != 0) {
            try {
                return a(identifier);
            } catch (Throwable unused) {
                return null;
            }
        }
        return null;
    }

    protected abstract T a(int i10);
}
