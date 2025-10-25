package yd;

import td.n2;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class q0 {

    /* renamed from: a  reason: collision with root package name */
    public final ad.i f33287a;

    /* renamed from: b  reason: collision with root package name */
    private final Object[] f33288b;

    /* renamed from: c  reason: collision with root package name */
    private final n2[] f33289c;

    /* renamed from: d  reason: collision with root package name */
    private int f33290d;

    public q0(ad.i iVar, int i10) {
        this.f33287a = iVar;
        this.f33288b = new Object[i10];
        this.f33289c = new n2[i10];
    }

    public final void a(n2 n2Var, Object obj) {
        Object[] objArr = this.f33288b;
        int i10 = this.f33290d;
        objArr[i10] = obj;
        n2[] n2VarArr = this.f33289c;
        this.f33290d = i10 + 1;
        kotlin.jvm.internal.m.c(n2Var, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        n2VarArr[i10] = n2Var;
    }

    public final void b(ad.i iVar) {
        int length = this.f33289c.length - 1;
        if (length < 0) {
            return;
        }
        while (true) {
            int i10 = length - 1;
            n2 n2Var = this.f33289c[length];
            kotlin.jvm.internal.m.b(n2Var);
            n2Var.v(iVar, this.f33288b[length]);
            if (i10 >= 0) {
                length = i10;
            } else {
                return;
            }
        }
    }
}
