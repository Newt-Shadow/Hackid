package com.google.gson;

import com.google.gson.internal.x;
import com.google.gson.internal.z;
import java.math.BigDecimal;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public abstract class u implements v {

    /* renamed from: a  reason: collision with root package name */
    public static final u f9367a;

    /* renamed from: b  reason: collision with root package name */
    public static final u f9368b;

    /* renamed from: c  reason: collision with root package name */
    public static final u f9369c;

    /* renamed from: d  reason: collision with root package name */
    public static final u f9370d;

    /* renamed from: e  reason: collision with root package name */
    private static final /* synthetic */ u[] f9371e;

    /* loaded from: classes.dex */
    enum a extends u {
        a(String str, int i10) {
            super(str, i10, null);
        }

        @Override // com.google.gson.v
        /* renamed from: b */
        public Double a(c9.a aVar) {
            return Double.valueOf(aVar.S());
        }
    }

    static {
        a aVar = new a("DOUBLE", 0);
        f9367a = aVar;
        u uVar = new u("LAZILY_PARSED_NUMBER", 1) { // from class: com.google.gson.u.b
            @Override // com.google.gson.v
            public Number a(c9.a aVar2) {
                return new x(aVar2.C());
            }
        };
        f9368b = uVar;
        u uVar2 = new u("LONG_OR_DOUBLE", 2) { // from class: com.google.gson.u.c
            private Number b(String str, c9.a aVar2) {
                try {
                    Double valueOf = Double.valueOf(str);
                    if ((!valueOf.isInfinite() && !valueOf.isNaN()) || aVar2.v()) {
                        return valueOf;
                    }
                    throw new c9.d("JSON forbids NaN and infinities: " + valueOf + "; at path " + aVar2.q());
                } catch (NumberFormatException e10) {
                    throw new m("Cannot parse " + str + "; at path " + aVar2.q(), e10);
                }
            }

            @Override // com.google.gson.v
            public Number a(c9.a aVar2) {
                String C = aVar2.C();
                if (C.indexOf(46) >= 0) {
                    return b(C, aVar2);
                }
                try {
                    return Long.valueOf(Long.parseLong(C));
                } catch (NumberFormatException unused) {
                    return b(C, aVar2);
                }
            }
        };
        f9369c = uVar2;
        u uVar3 = new u("BIG_DECIMAL", 3) { // from class: com.google.gson.u.d
            @Override // com.google.gson.v
            /* renamed from: b */
            public BigDecimal a(c9.a aVar2) {
                String C = aVar2.C();
                try {
                    return z.b(C);
                } catch (NumberFormatException e10) {
                    throw new m("Cannot parse " + C + "; at path " + aVar2.q(), e10);
                }
            }
        };
        f9370d = uVar3;
        f9371e = new u[]{aVar, uVar, uVar2, uVar3};
    }

    private u(String str, int i10) {
    }

    public static u valueOf(String str) {
        return (u) Enum.valueOf(u.class, str);
    }

    public static u[] values() {
        return (u[]) f9371e.clone();
    }

    /* synthetic */ u(String str, int i10, a aVar) {
        this(str, i10);
    }
}
