package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class za {

    /* renamed from: d  reason: collision with root package name */
    private static final za f6918d = new za(true);

    /* renamed from: a  reason: collision with root package name */
    final bd f6919a = new xc();

    /* renamed from: b  reason: collision with root package name */
    private boolean f6920b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f6921c;

    private za() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(pa paVar, pd pdVar, int i10, Object obj) {
        if (pdVar != pd.f6679l) {
            paVar.i(i10, pdVar.b());
            qd qdVar = qd.INT;
            switch (pdVar.ordinal()) {
                case 0:
                    paVar.A(Double.doubleToRawLongBits(((Double) obj).doubleValue()));
                    return;
                case 1:
                    paVar.y(Float.floatToRawIntBits(((Float) obj).floatValue()));
                    return;
                case 2:
                    paVar.z(((Long) obj).longValue());
                    return;
                case 3:
                    paVar.z(((Long) obj).longValue());
                    return;
                case 4:
                    paVar.w(((Integer) obj).intValue());
                    return;
                case 5:
                    paVar.A(((Long) obj).longValue());
                    return;
                case 6:
                    paVar.y(((Integer) obj).intValue());
                    return;
                case 7:
                    paVar.v(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                    return;
                case 8:
                    if (obj instanceof ka) {
                        paVar.r((ka) obj);
                        return;
                    } else {
                        paVar.C((String) obj);
                        return;
                    }
                case 9:
                    ((ic) obj).c(paVar);
                    return;
                case 10:
                    paVar.u((ic) obj);
                    return;
                case 11:
                    if (obj instanceof ka) {
                        paVar.r((ka) obj);
                        return;
                    }
                    byte[] bArr = (byte[]) obj;
                    paVar.s(bArr, 0, bArr.length);
                    return;
                case 12:
                    paVar.x(((Integer) obj).intValue());
                    return;
                case 13:
                    if (obj instanceof jb) {
                        paVar.w(((jb) obj).zza());
                        return;
                    } else {
                        paVar.w(((Integer) obj).intValue());
                        return;
                    }
                case 14:
                    paVar.y(((Integer) obj).intValue());
                    return;
                case 15:
                    paVar.A(((Long) obj).longValue());
                    return;
                case 16:
                    int intValue = ((Integer) obj).intValue();
                    paVar.x((intValue >> 31) ^ (intValue + intValue));
                    return;
                case 17:
                    long longValue = ((Long) obj).longValue();
                    paVar.z((longValue >> 63) ^ (longValue + longValue));
                    return;
                default:
                    return;
            }
        }
        ic icVar = (ic) obj;
        ob.d(icVar);
        paVar.i(i10, 3);
        icVar.c(paVar);
        paVar.i(i10, 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(pd pdVar, int i10, Object obj) {
        int E = pa.E(i10 << 3);
        if (pdVar == pd.f6679l) {
            ob.d((ic) obj);
            E += E;
        }
        return E + e(pdVar, obj);
    }

    static int e(pd pdVar, Object obj) {
        int i10;
        int E;
        pd pdVar2 = pd.f6670c;
        qd qdVar = qd.INT;
        switch (pdVar.ordinal()) {
            case 0:
                ((Double) obj).doubleValue();
                int i11 = pa.f6668d;
                return 8;
            case 1:
                ((Float) obj).floatValue();
                int i12 = pa.f6668d;
                return 4;
            case 2:
                return pa.a(((Long) obj).longValue());
            case 3:
                return pa.a(((Long) obj).longValue());
            case 4:
                return pa.a(((Integer) obj).intValue());
            case 5:
                ((Long) obj).longValue();
                int i13 = pa.f6668d;
                return 8;
            case 6:
                ((Integer) obj).intValue();
                int i14 = pa.f6668d;
                return 4;
            case 7:
                ((Boolean) obj).booleanValue();
                int i15 = pa.f6668d;
                return 1;
            case 8:
                if (obj instanceof ka) {
                    int i16 = pa.f6668d;
                    i10 = ((ka) obj).i();
                    E = pa.E(i10);
                    break;
                } else {
                    return pa.b((String) obj);
                }
            case 9:
                return ((ic) obj).a();
            case 10:
                return pa.c((ic) obj);
            case 11:
                if (obj instanceof ka) {
                    int i17 = pa.f6668d;
                    i10 = ((ka) obj).i();
                    E = pa.E(i10);
                    break;
                } else {
                    int i18 = pa.f6668d;
                    i10 = ((byte[]) obj).length;
                    E = pa.E(i10);
                    break;
                }
            case 12:
                return pa.E(((Integer) obj).intValue());
            case 13:
                if (obj instanceof jb) {
                    return pa.a(((jb) obj).zza());
                }
                return pa.a(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).intValue();
                int i19 = pa.f6668d;
                return 4;
            case 15:
                ((Long) obj).longValue();
                int i20 = pa.f6668d;
                return 8;
            case 16:
                int intValue = ((Integer) obj).intValue();
                return pa.E((intValue >> 31) ^ (intValue + intValue));
            case 17:
                long longValue = ((Long) obj).longValue();
                return pa.a((longValue >> 63) ^ (longValue + longValue));
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
        return E + i10;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final void f(com.google.android.gms.internal.measurement.ya r2, java.lang.Object r3) {
        /*
            com.google.android.gms.internal.measurement.pd r0 = r2.e()
            byte[] r1 = com.google.android.gms.internal.measurement.ob.f6616b
            r3.getClass()
            com.google.android.gms.internal.measurement.pd r1 = com.google.android.gms.internal.measurement.pd.f6670c
            com.google.android.gms.internal.measurement.qd r1 = com.google.android.gms.internal.measurement.qd.INT
            com.google.android.gms.internal.measurement.qd r0 = r0.a()
            int r0 = r0.ordinal()
            switch(r0) {
                case 0: goto L3f;
                case 1: goto L3c;
                case 2: goto L39;
                case 3: goto L36;
                case 4: goto L33;
                case 5: goto L30;
                case 6: goto L27;
                case 7: goto L1e;
                case 8: goto L19;
                default: goto L18;
            }
        L18:
            goto L44
        L19:
            boolean r0 = r3 instanceof com.google.android.gms.internal.measurement.ic
            if (r0 == 0) goto L44
            goto L43
        L1e:
            boolean r0 = r3 instanceof java.lang.Integer
            if (r0 != 0) goto L43
            boolean r0 = r3 instanceof com.google.android.gms.internal.measurement.jb
            if (r0 == 0) goto L44
            goto L43
        L27:
            boolean r0 = r3 instanceof com.google.android.gms.internal.measurement.ka
            if (r0 != 0) goto L43
            boolean r0 = r3 instanceof byte[]
            if (r0 == 0) goto L44
            goto L43
        L30:
            boolean r0 = r3 instanceof java.lang.String
            goto L41
        L33:
            boolean r0 = r3 instanceof java.lang.Boolean
            goto L41
        L36:
            boolean r0 = r3 instanceof java.lang.Double
            goto L41
        L39:
            boolean r0 = r3 instanceof java.lang.Float
            goto L41
        L3c:
            boolean r0 = r3 instanceof java.lang.Long
            goto L41
        L3f:
            boolean r0 = r3 instanceof java.lang.Integer
        L41:
            if (r0 == 0) goto L44
        L43:
            return
        L44:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            int r1 = r2.zza()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            com.google.android.gms.internal.measurement.pd r2 = r2.e()
            com.google.android.gms.internal.measurement.qd r2 = r2.a()
            java.lang.Class r3 = r3.getClass()
            java.lang.String r3 = r3.getName()
            java.lang.Object[] r2 = new java.lang.Object[]{r1, r2, r3}
            java.lang.String r3 = "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"
            java.lang.String r2 = java.lang.String.format(r3, r2)
            r0.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.za.f(com.google.android.gms.internal.measurement.ya, java.lang.Object):void");
    }

    public final void a() {
        if (this.f6920b) {
            return;
        }
        bd bdVar = this.f6919a;
        int c10 = bdVar.c();
        for (int i10 = 0; i10 < c10; i10++) {
            Object value = bdVar.e(i10).getValue();
            if (value instanceof hb) {
                ((hb) value).n();
            }
        }
        for (Map.Entry entry : bdVar.f()) {
            Object value2 = entry.getValue();
            if (value2 instanceof hb) {
                ((hb) value2).n();
            }
        }
        bdVar.a();
        this.f6920b = true;
    }

    public final void b(ya yaVar, Object obj) {
        if (yaVar.g()) {
            if (obj instanceof List) {
                List list = (List) obj;
                int size = list.size();
                ArrayList arrayList = new ArrayList(size);
                for (int i10 = 0; i10 < size; i10++) {
                    Object obj2 = list.get(i10);
                    f(yaVar, obj2);
                    arrayList.add(obj2);
                }
                obj = arrayList;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        } else {
            f(yaVar, obj);
        }
        this.f6919a.put(yaVar, obj);
    }

    public final /* bridge */ /* synthetic */ Object clone() {
        za zaVar = new za();
        bd bdVar = this.f6919a;
        int c10 = bdVar.c();
        for (int i10 = 0; i10 < c10; i10++) {
            Map.Entry e10 = bdVar.e(i10);
            android.support.v4.media.session.b.a(((yc) e10).a());
            zaVar.b(null, e10.getValue());
        }
        for (Map.Entry entry : bdVar.f()) {
            android.support.v4.media.session.b.a(entry.getKey());
            zaVar.b(null, entry.getValue());
        }
        zaVar.f6921c = this.f6921c;
        return zaVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof za)) {
            return false;
        }
        return this.f6919a.equals(((za) obj).f6919a);
    }

    public final int hashCode() {
        return this.f6919a.hashCode();
    }

    private za(boolean z10) {
        a();
        a();
    }
}
