package com.google.android.gms.internal.measurement;

import java.util.Map;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class yc implements Map.Entry, Comparable {

    /* renamed from: a  reason: collision with root package name */
    private final Comparable f6900a;

    /* renamed from: b  reason: collision with root package name */
    private Object f6901b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ bd f6902c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public yc(bd bdVar, Comparable comparable, Object obj) {
        Objects.requireNonNull(bdVar);
        this.f6902c = bdVar;
        this.f6900a = comparable;
        this.f6901b = obj;
    }

    private static final boolean b(Object obj, Object obj2) {
        if (obj == null) {
            if (obj2 != null) {
                return false;
            }
            return true;
        }
        return obj.equals(obj2);
    }

    public final Comparable a() {
        return this.f6900a;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.f6900a.compareTo(((yc) obj).f6900a);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (b(this.f6900a, entry.getKey()) && b(this.f6901b, entry.getValue())) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f6900a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f6901b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        int hashCode;
        Comparable comparable = this.f6900a;
        int i10 = 0;
        if (comparable == null) {
            hashCode = 0;
        } else {
            hashCode = comparable.hashCode();
        }
        Object obj = this.f6901b;
        if (obj != null) {
            i10 = obj.hashCode();
        }
        return hashCode ^ i10;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        this.f6902c.i();
        Object obj2 = this.f6901b;
        this.f6901b = obj;
        return obj2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f6900a);
        String valueOf2 = String.valueOf(this.f6901b);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 1 + valueOf2.length());
        sb2.append(valueOf);
        sb2.append("=");
        sb2.append(valueOf2);
        return sb2.toString();
    }
}
