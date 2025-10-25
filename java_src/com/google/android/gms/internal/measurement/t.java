package com.google.android.gms.internal.measurement;

import java.util.Iterator;
/* loaded from: classes.dex */
public final class t implements Iterable, p {

    /* renamed from: a  reason: collision with root package name */
    private final String f6796a;

    public t(String str) {
        if (str != null) {
            this.f6796a = str;
            return;
        }
        throw new IllegalArgumentException("StringValue cannot be null.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ String d() {
        return this.f6796a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t)) {
            return false;
        }
        return this.f6796a.equals(((t) obj).f6796a);
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final String f() {
        return this.f6796a;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Double g() {
        String str = this.f6796a;
        if (!str.isEmpty()) {
            try {
                return Double.valueOf(str);
            } catch (NumberFormatException unused) {
                return Double.valueOf(Double.NaN);
            }
        }
        return Double.valueOf(0.0d);
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Boolean h() {
        return Boolean.valueOf(!this.f6796a.isEmpty());
    }

    public final int hashCode() {
        return this.f6796a.hashCode();
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Iterator i() {
        return new r(this);
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new s(this);
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final p r() {
        return new t(this.f6796a);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x027e  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0334  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0418  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x04c3  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0513  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0571  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x05c7  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0611  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x064b  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0167  */
    @Override // com.google.android.gms.internal.measurement.p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.measurement.p s(java.lang.String r21, com.google.android.gms.internal.measurement.z4 r22, java.util.List r23) {
        /*
            Method dump skipped, instructions count: 1792
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.t.s(java.lang.String, com.google.android.gms.internal.measurement.z4, java.util.List):com.google.android.gms.internal.measurement.p");
    }

    public final String toString() {
        String str = this.f6796a;
        StringBuilder sb2 = new StringBuilder(str.length() + 2);
        sb2.append("\"");
        sb2.append(str);
        sb2.append("\"");
        return sb2.toString();
    }
}
