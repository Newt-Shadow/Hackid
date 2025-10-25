package com.google.android.gms.internal.measurement;

import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class ca extends m {

    /* renamed from: b  reason: collision with root package name */
    private final c f6341b;

    public ca(c cVar) {
        this.f6341b = cVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.measurement.m, com.google.android.gms.internal.measurement.p
    public final p s(String str, z4 z4Var, List list) {
        char c10;
        switch (str.hashCode()) {
            case 21624207:
                if (str.equals("getEventName")) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case 45521504:
                if (str.equals("getTimestamp")) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case 146575578:
                if (str.equals("getParamValue")) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case 700587132:
                if (str.equals("getParams")) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case 920706790:
                if (str.equals("setParamValue")) {
                    c10 = 5;
                    break;
                }
                c10 = 65535;
                break;
            case 1570616835:
                if (str.equals("setEventName")) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        if (c10 != 0) {
            if (c10 != 1) {
                if (c10 != 2) {
                    if (c10 != 3) {
                        if (c10 != 4) {
                            if (c10 != 5) {
                                return super.s(str, z4Var, list);
                            }
                            a6.a("setParamValue", 2, list);
                            String f10 = z4Var.a((p) list.get(0)).f();
                            p a10 = z4Var.a((p) list.get(1));
                            this.f6341b.c().d(f10, a6.j(a10));
                            return a10;
                        }
                        a6.a("setEventName", 1, list);
                        p a11 = z4Var.a((p) list.get(0));
                        if (!p.f6622j0.equals(a11) && !p.f6623k0.equals(a11)) {
                            this.f6341b.c().c(a11.f());
                            return new t(a11.f());
                        }
                        throw new IllegalArgumentException("Illegal event name");
                    }
                    a6.a("getTimestamp", 0, list);
                    return new i(Double.valueOf(this.f6341b.c().a()));
                }
                a6.a("getParams", 0, list);
                Map f11 = this.f6341b.c().f();
                m mVar = new m();
                for (String str2 : f11.keySet()) {
                    mVar.m(str2, b7.a(f11.get(str2)));
                }
                return mVar;
            }
            a6.a("getParamValue", 1, list);
            return b7.a(this.f6341b.c().e(z4Var.a((p) list.get(0)).f()));
        }
        a6.a("getEventName", 0, list);
        return new t(this.f6341b.c().b());
    }
}
