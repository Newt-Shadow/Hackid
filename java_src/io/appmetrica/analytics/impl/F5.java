package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class F5 implements InterfaceC1120dd {

    /* renamed from: a  reason: collision with root package name */
    public final String f18213a;

    public F5(String str) {
        this.f18213a = str;
    }

    public final F5 a(String str) {
        return new F5(str);
    }

    public final String b() {
        return this.f18213a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof F5) && kotlin.jvm.internal.m.a(this.f18213a, ((F5) obj).f18213a)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.f18213a.hashCode();
    }

    public final String toString() {
        return "ConstantModuleEntryPointProvider(className=" + this.f18213a + ')';
    }

    public static F5 a(F5 f52, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = f52.f18213a;
        }
        f52.getClass();
        return new F5(str);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1120dd
    public final String a() {
        return this.f18213a;
    }
}
