package com.google.android.gms.internal.auth;

import java.io.Serializable;
import java.util.Arrays;
/* loaded from: classes.dex */
final class x0 implements Serializable, t0 {

    /* renamed from: a  reason: collision with root package name */
    final Object f6199a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x0(Object obj) {
        this.f6199a = obj;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof x0)) {
            return false;
        }
        Object obj2 = this.f6199a;
        Object obj3 = ((x0) obj).f6199a;
        if (obj2 != obj3 && !obj2.equals(obj3)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f6199a});
    }

    public final String toString() {
        String obj = this.f6199a.toString();
        return "Suppliers.ofInstance(" + obj + ")";
    }

    @Override // com.google.android.gms.internal.auth.t0
    public final Object zza() {
        return this.f6199a;
    }
}
