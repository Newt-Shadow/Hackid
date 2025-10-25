package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Comparator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class a0 implements Comparator {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ j f6209a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ z4 f6210b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a0(j jVar, z4 z4Var) {
        this.f6209a = jVar;
        this.f6210b = z4Var;
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        p pVar = (p) obj;
        p pVar2 = (p) obj2;
        if (pVar instanceof u) {
            if (!(pVar2 instanceof u)) {
                return 1;
            }
            return 0;
        } else if (pVar2 instanceof u) {
            return -1;
        } else {
            j jVar = this.f6209a;
            if (jVar == null) {
                return pVar.f().compareTo(pVar2.f());
            }
            return (int) a6.i(jVar.a(this.f6210b, Arrays.asList(pVar, pVar2)).g().doubleValue());
        }
    }
}
