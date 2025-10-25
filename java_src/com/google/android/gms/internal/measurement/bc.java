package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class bc {

    /* renamed from: a  reason: collision with root package name */
    private final ac f6271a;

    private bc(pd pdVar, Object obj, pd pdVar2, Object obj2) {
        this.f6271a = new ac(pdVar, "", pdVar2, "");
    }

    public static bc a(pd pdVar, Object obj, pd pdVar2, Object obj2) {
        return new bc(pdVar, "", pdVar2, "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(pa paVar, ac acVar, Object obj, Object obj2) {
        za.c(paVar, acVar.f6255a, 1, obj);
        za.c(paVar, acVar.f6257c, 2, obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(ac acVar, Object obj, Object obj2) {
        return za.d(acVar.f6255a, 1, obj) + za.d(acVar.f6257c, 2, obj2);
    }

    public final int d(int i10, Object obj, Object obj2) {
        ac acVar = this.f6271a;
        int E = pa.E(i10 << 3);
        int c10 = c(acVar, obj, obj2);
        return E + pa.E(c10) + c10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ac e() {
        return this.f6271a;
    }
}
