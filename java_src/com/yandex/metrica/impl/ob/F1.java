package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public class F1 {

    /* renamed from: a  reason: collision with root package name */
    private final int f10053a;

    /* renamed from: b  reason: collision with root package name */
    private final int f10054b;

    /* renamed from: c  reason: collision with root package name */
    private final int f10055c;

    public F1(int i10, int i11, int i12) {
        this.f10053a = i10;
        this.f10054b = i11;
        this.f10055c = i12;
    }

    public final int a(Boolean bool) {
        if (bool == null) {
            return this.f10053a;
        }
        if (kotlin.jvm.internal.m.a(bool, Boolean.FALSE)) {
            return this.f10054b;
        }
        if (kotlin.jvm.internal.m.a(bool, Boolean.TRUE)) {
            return this.f10055c;
        }
        throw new xc.i();
    }

    public final Boolean a(int i10) {
        if (i10 == this.f10054b) {
            return Boolean.FALSE;
        }
        if (i10 == this.f10055c) {
            return Boolean.TRUE;
        }
        return null;
    }
}
