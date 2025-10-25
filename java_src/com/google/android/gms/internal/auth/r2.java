package com.google.android.gms.internal.auth;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class r2 implements l3 {

    /* renamed from: b  reason: collision with root package name */
    private static final w2 f6159b = new p2();

    /* renamed from: a  reason: collision with root package name */
    private final w2 f6160a;

    public r2() {
        w2 w2Var;
        w2[] w2VarArr = new w2[2];
        w2VarArr[0] = z1.c();
        try {
            w2Var = (w2) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            w2Var = f6159b;
        }
        w2VarArr[1] = w2Var;
        q2 q2Var = new q2(w2VarArr);
        byte[] bArr = f2.f6011d;
        this.f6160a = q2Var;
    }

    private static boolean b(v2 v2Var) {
        if (v2Var.f() - 1 != 1) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.auth.l3
    public final k3 a(Class cls) {
        m3.d(cls);
        v2 a10 = this.f6160a.a(cls);
        if (a10.e()) {
            if (b2.class.isAssignableFrom(cls)) {
                return d3.b(m3.b(), x1.b(), a10.zza());
            }
            return d3.b(m3.a(), x1.a(), a10.zza());
        } else if (b2.class.isAssignableFrom(cls)) {
            if (b(a10)) {
                return c3.s(cls, a10, f3.b(), o2.d(), m3.b(), x1.b(), u2.b());
            }
            return c3.s(cls, a10, f3.b(), o2.d(), m3.b(), null, u2.b());
        } else if (b(a10)) {
            return c3.s(cls, a10, f3.a(), o2.c(), m3.a(), x1.a(), u2.a());
        } else {
            return c3.s(cls, a10, f3.a(), o2.c(), m3.a(), null, u2.a());
        }
    }
}
