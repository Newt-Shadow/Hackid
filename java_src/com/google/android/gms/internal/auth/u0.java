package com.google.android.gms.internal.auth;

import java.io.Serializable;
/* loaded from: classes.dex */
final class u0 implements Serializable, t0 {

    /* renamed from: a  reason: collision with root package name */
    final t0 f6177a;

    /* renamed from: b  reason: collision with root package name */
    volatile transient boolean f6178b;

    /* renamed from: c  reason: collision with root package name */
    transient Object f6179c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u0(t0 t0Var) {
        this.f6177a = t0Var;
    }

    public final String toString() {
        Object obj;
        if (this.f6178b) {
            obj = "<supplier that returned " + String.valueOf(this.f6179c) + ">";
        } else {
            obj = this.f6177a;
        }
        return "Suppliers.memoize(" + obj.toString() + ")";
    }

    @Override // com.google.android.gms.internal.auth.t0
    public final Object zza() {
        if (!this.f6178b) {
            synchronized (this) {
                if (!this.f6178b) {
                    Object zza = this.f6177a.zza();
                    this.f6179c = zza;
                    this.f6178b = true;
                    return zza;
                }
            }
        }
        return this.f6179c;
    }
}
