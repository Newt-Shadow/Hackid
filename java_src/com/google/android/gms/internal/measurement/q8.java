package com.google.android.gms.internal.measurement;

import android.content.Context;
/* loaded from: classes.dex */
final class q8 extends k9 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f6709a;

    /* renamed from: b  reason: collision with root package name */
    private final n6.s f6710b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q8(Context context, n6.s sVar) {
        this.f6709a = context;
        this.f6710b = sVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.k9
    public final Context a() {
        return this.f6709a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.k9
    public final n6.s b() {
        return this.f6710b;
    }

    public final boolean equals(Object obj) {
        n6.s sVar;
        if (obj == this) {
            return true;
        }
        if (obj instanceof k9) {
            k9 k9Var = (k9) obj;
            if (this.f6709a.equals(k9Var.a()) && ((sVar = this.f6710b) != null ? sVar.equals(k9Var.b()) : k9Var.b() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = this.f6709a.hashCode() ^ 1000003;
        n6.s sVar = this.f6710b;
        if (sVar == null) {
            hashCode = 0;
        } else {
            hashCode = sVar.hashCode();
        }
        return (hashCode2 * 1000003) ^ hashCode;
    }

    public final String toString() {
        String obj = this.f6709a.toString();
        int length = obj.length();
        String valueOf = String.valueOf(this.f6710b);
        StringBuilder sb2 = new StringBuilder(length + 45 + valueOf.length() + 1);
        sb2.append("FlagsContext{context=");
        sb2.append(obj);
        sb2.append(", hermeticFileOverrides=");
        sb2.append(valueOf);
        sb2.append("}");
        return sb2.toString();
    }
}
