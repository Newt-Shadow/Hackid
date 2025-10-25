package io.appmetrica.analytics.impl;
/* renamed from: io.appmetrica.analytics.impl.k5  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1286k5 {

    /* renamed from: a  reason: collision with root package name */
    public final C1386o5 f19905a;

    /* renamed from: b  reason: collision with root package name */
    public final String f19906b = "[ComponentMigrationToV113]";

    public AbstractC1286k5(C1386o5 c1386o5) {
        this.f19905a = c1386o5;
    }

    public final C1386o5 a() {
        return this.f19905a;
    }

    public final String b() {
        return this.f19906b;
    }

    public abstract boolean b(int i10);

    public abstract void c();

    public final void a(int i10) {
        if (b(i10)) {
            c();
        }
    }
}
