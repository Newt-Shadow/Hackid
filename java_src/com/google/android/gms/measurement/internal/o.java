package com.google.android.gms.measurement.internal;

import java.util.EnumMap;
/* loaded from: classes.dex */
final class o {

    /* renamed from: a  reason: collision with root package name */
    private final EnumMap f7811a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o() {
        this.f7811a = new EnumMap(i6.s.class);
    }

    public static o d(String str) {
        EnumMap enumMap = new EnumMap(i6.s.class);
        if (str.length() >= i6.s.values().length) {
            int i10 = 0;
            if (str.charAt(0) == '1') {
                i6.s[] values = i6.s.values();
                int length = values.length;
                int i11 = 1;
                while (i10 < length) {
                    enumMap.put((EnumMap) values[i10], (i6.s) n.a(str.charAt(i11)));
                    i10++;
                    i11++;
                }
                return new o(enumMap);
            }
        }
        return new o();
    }

    public final n a(i6.s sVar) {
        n nVar = (n) this.f7811a.get(sVar);
        if (nVar == null) {
            return n.UNSET;
        }
        return nVar;
    }

    public final void b(i6.s sVar, int i10) {
        n nVar = n.UNSET;
        if (i10 != -30) {
            if (i10 != -20) {
                if (i10 != -10) {
                    if (i10 != 0) {
                        if (i10 == 30) {
                            nVar = n.INITIALIZATION;
                        }
                    }
                } else {
                    nVar = n.MANIFEST;
                }
            }
            nVar = n.API;
        } else {
            nVar = n.TCF;
        }
        this.f7811a.put((EnumMap) sVar, (i6.s) nVar);
    }

    public final void c(i6.s sVar, n nVar) {
        this.f7811a.put((EnumMap) sVar, (i6.s) nVar);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("1");
        for (i6.s sVar : i6.s.values()) {
            n nVar = (n) this.f7811a.get(sVar);
            if (nVar == null) {
                nVar = n.UNSET;
            }
            sb2.append(nVar.b());
        }
        return sb2.toString();
    }

    private o(EnumMap enumMap) {
        EnumMap enumMap2 = new EnumMap(i6.s.class);
        this.f7811a = enumMap2;
        enumMap2.putAll(enumMap);
    }
}
