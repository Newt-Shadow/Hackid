package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.c7  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0452c7 {

    /* renamed from: a  reason: collision with root package name */
    private final EnumC0552g7 f12130a;

    /* renamed from: b  reason: collision with root package name */
    private final String f12131b;

    public C0452c7() {
        this(null, null, 3);
    }

    public final String a() {
        return this.f12131b;
    }

    public final EnumC0552g7 b() {
        return this.f12130a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof C0452c7) {
                C0452c7 c0452c7 = (C0452c7) obj;
                return kotlin.jvm.internal.m.a(this.f12130a, c0452c7.f12130a) && kotlin.jvm.internal.m.a(this.f12131b, c0452c7.f12131b);
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        EnumC0552g7 enumC0552g7 = this.f12130a;
        int hashCode = (enumC0552g7 != null ? enumC0552g7.hashCode() : 0) * 31;
        String str = this.f12131b;
        return hashCode + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "NativeCrashHandlerDescription(source=" + this.f12130a + ", handlerVersion=" + this.f12131b + ")";
    }

    public C0452c7(EnumC0552g7 enumC0552g7, String str) {
        this.f12130a = enumC0552g7;
        this.f12131b = str;
    }

    public /* synthetic */ C0452c7(EnumC0552g7 enumC0552g7, String str, int i10) {
        this((i10 & 1) != 0 ? EnumC0552g7.UNKNOWN : null, null);
    }
}
