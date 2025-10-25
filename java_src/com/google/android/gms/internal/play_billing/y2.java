package com.google.android.gms.internal.play_billing;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class y2 implements r3 {

    /* renamed from: b  reason: collision with root package name */
    private static final d3 f7171b = new w2();

    /* renamed from: a  reason: collision with root package name */
    private final d3 f7172a;

    public y2() {
        d3 d3Var;
        d3[] d3VarArr = new d3[2];
        d3VarArr[0] = x1.c();
        try {
            d3Var = (d3) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            d3Var = f7171b;
        }
        d3VarArr[1] = d3Var;
        x2 x2Var = new x2(d3VarArr);
        byte[] bArr = j2.f7023d;
        this.f7172a = x2Var;
    }

    private static boolean b(c3 c3Var) {
        if (c3Var.f() - 1 != 1) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.play_billing.r3
    public final q3 a(Class cls) {
        s3.w(cls);
        c3 a10 = this.f7172a.a(cls);
        if (a10.e()) {
            if (b2.class.isAssignableFrom(cls)) {
                return j3.j(s3.t(), t1.b(), a10.zza());
            }
            return j3.j(s3.s(), t1.a(), a10.zza());
        } else if (b2.class.isAssignableFrom(cls)) {
            if (b(a10)) {
                return i3.A(cls, a10, l3.b(), u2.d(), s3.t(), t1.b(), b3.b());
            }
            return i3.A(cls, a10, l3.b(), u2.d(), s3.t(), null, b3.b());
        } else if (b(a10)) {
            return i3.A(cls, a10, l3.a(), u2.c(), s3.s(), t1.a(), b3.a());
        } else {
            return i3.A(cls, a10, l3.a(), u2.c(), s3.s(), null, b3.a());
        }
    }
}
