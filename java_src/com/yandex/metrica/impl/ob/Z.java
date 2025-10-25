package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
import android.content.Context;
/* loaded from: classes2.dex */
public final class Z<T> {

    /* renamed from: a  reason: collision with root package name */
    private final W<T> f11851a;

    /* renamed from: b  reason: collision with root package name */
    private final X<T> f11852b;

    /* renamed from: c  reason: collision with root package name */
    private final E0 f11853c;

    /* renamed from: d  reason: collision with root package name */
    private final String f11854d;

    public Z(W<T> w10, X<T> x10, E0 e02, String str) {
        this.f11851a = w10;
        this.f11852b = x10;
        this.f11853c = e02;
        this.f11854d = str;
    }

    public final void a(Context context, ContentValues contentValues) {
        try {
            Object invoke = this.f11851a.invoke(contentValues);
            if (invoke != null) {
                this.f11853c.a(context);
                if (((Boolean) this.f11852b.invoke(invoke)).booleanValue()) {
                    C0572h2.a("Successfully saved " + this.f11854d, new Object[0]);
                } else {
                    C0572h2.b("Did not save " + this.f11854d + " because data is already present", new Object[0]);
                }
            }
        } catch (Throwable th) {
            C0572h2.a(th, "Unexpected error occurred", new Object[0]);
        }
    }
}
