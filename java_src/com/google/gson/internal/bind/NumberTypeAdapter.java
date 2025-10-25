package com.google.gson.internal.bind;

import c9.c;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.q;
import com.google.gson.u;
import com.google.gson.v;
import com.google.gson.w;
/* loaded from: classes.dex */
public final class NumberTypeAdapter extends TypeAdapter {

    /* renamed from: b  reason: collision with root package name */
    private static final w f9180b = g(u.f9368b);

    /* renamed from: a  reason: collision with root package name */
    private final v f9181a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f9183a;

        static {
            int[] iArr = new int[c9.b.values().length];
            f9183a = iArr;
            try {
                iArr[c9.b.NULL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9183a[c9.b.NUMBER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9183a[c9.b.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private NumberTypeAdapter(v vVar) {
        this.f9181a = vVar;
    }

    public static w f(v vVar) {
        if (vVar == u.f9368b) {
            return f9180b;
        }
        return g(vVar);
    }

    private static w g(v vVar) {
        return new w() { // from class: com.google.gson.internal.bind.NumberTypeAdapter.1
            @Override // com.google.gson.w
            public TypeAdapter create(Gson gson, com.google.gson.reflect.a aVar) {
                if (aVar.c() == Number.class) {
                    return NumberTypeAdapter.this;
                }
                return null;
            }
        };
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: h */
    public Number c(c9.a aVar) {
        c9.b X = aVar.X();
        int i10 = a.f9183a[X.ordinal()];
        if (i10 != 1) {
            if (i10 != 2 && i10 != 3) {
                throw new q("Expecting number, got: " + X + "; at path " + aVar.j());
            }
            return this.f9181a.a(aVar);
        }
        aVar.H();
        return null;
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: i */
    public void e(c cVar, Number number) {
        cVar.D0(number);
    }
}
