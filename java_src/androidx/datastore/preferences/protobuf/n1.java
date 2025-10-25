package androidx.datastore.preferences.protobuf;
/* loaded from: classes.dex */
class n1 extends l1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.l1
    /* renamed from: A */
    public m1 g(Object obj) {
        return ((w) obj).unknownFields;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.l1
    /* renamed from: B */
    public int h(m1 m1Var) {
        return m1Var.d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.l1
    /* renamed from: C */
    public int i(m1 m1Var) {
        return m1Var.e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.l1
    /* renamed from: D */
    public m1 k(m1 m1Var, m1 m1Var2) {
        if (m1.c().equals(m1Var2)) {
            return m1Var;
        }
        if (m1.c().equals(m1Var)) {
            return m1.j(m1Var, m1Var2);
        }
        return m1Var.i(m1Var2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.l1
    /* renamed from: E */
    public m1 n() {
        return m1.k();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.l1
    /* renamed from: F */
    public void o(Object obj, m1 m1Var) {
        p(obj, m1Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.l1
    /* renamed from: G */
    public void p(Object obj, m1 m1Var) {
        ((w) obj).unknownFields = m1Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.l1
    /* renamed from: H */
    public m1 r(m1 m1Var) {
        m1Var.h();
        return m1Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.l1
    /* renamed from: I */
    public void s(m1 m1Var, r1 r1Var) {
        m1Var.p(r1Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.l1
    /* renamed from: J */
    public void t(m1 m1Var, r1 r1Var) {
        m1Var.r(r1Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.l1
    public void j(Object obj) {
        g(obj).h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.l1
    public boolean q(d1 d1Var) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.l1
    /* renamed from: u */
    public void a(m1 m1Var, int i10, int i11) {
        m1Var.n(q1.c(i10, 5), Integer.valueOf(i11));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.l1
    /* renamed from: v */
    public void b(m1 m1Var, int i10, long j10) {
        m1Var.n(q1.c(i10, 1), Long.valueOf(j10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.l1
    /* renamed from: w */
    public void c(m1 m1Var, int i10, m1 m1Var2) {
        m1Var.n(q1.c(i10, 3), m1Var2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.l1
    /* renamed from: x */
    public void d(m1 m1Var, int i10, g gVar) {
        m1Var.n(q1.c(i10, 2), gVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.l1
    /* renamed from: y */
    public void e(m1 m1Var, int i10, long j10) {
        m1Var.n(q1.c(i10, 0), Long.valueOf(j10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.datastore.preferences.protobuf.l1
    /* renamed from: z */
    public m1 f(Object obj) {
        m1 g10 = g(obj);
        if (g10 == m1.c()) {
            m1 k10 = m1.k();
            p(obj, k10);
            return k10;
        }
        return g10;
    }
}
