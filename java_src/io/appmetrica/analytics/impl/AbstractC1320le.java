package io.appmetrica.analytics.impl;
/* renamed from: io.appmetrica.analytics.impl.le  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1320le {

    /* renamed from: a  reason: collision with root package name */
    public final int f20023a = -1;

    /* renamed from: b  reason: collision with root package name */
    public final int f20024b = 0;

    /* renamed from: c  reason: collision with root package name */
    public final int f20025c = 1;

    public final int a(Boolean bool) {
        if (bool == null) {
            return this.f20023a;
        }
        if (kotlin.jvm.internal.m.a(bool, Boolean.FALSE)) {
            return this.f20024b;
        }
        if (kotlin.jvm.internal.m.a(bool, Boolean.TRUE)) {
            return this.f20025c;
        }
        throw new xc.i();
    }

    public final Boolean a(int i10) {
        if (i10 == this.f20024b) {
            return Boolean.FALSE;
        }
        if (i10 == this.f20025c) {
            return Boolean.TRUE;
        }
        return null;
    }
}
