package io.appmetrica.analytics.impl;
/* renamed from: io.appmetrica.analytics.impl.a8  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1040a8 {

    /* renamed from: a  reason: collision with root package name */
    public final Pc f19376a;

    public AbstractC1040a8() {
        Pc pc2 = new Pc(0);
        pc2.a(EnumC1065b8.f19424b, 0);
        pc2.a(EnumC1065b8.f19425c, 1);
        pc2.a(EnumC1065b8.f19426d, 2);
        pc2.a(EnumC1065b8.f19427e, 3);
        this.f19376a = pc2;
    }

    public final Pc a() {
        return this.f19376a;
    }

    public abstract boolean a(Object obj, Object obj2);
}
