package com.google.firebase.installations;

import m6.l;
/* loaded from: classes.dex */
class f implements h {

    /* renamed from: a  reason: collision with root package name */
    final l f8799a;

    public f(l lVar) {
        this.f8799a = lVar;
    }

    @Override // com.google.firebase.installations.h
    public boolean a(m8.d dVar) {
        if (!dVar.l() && !dVar.k() && !dVar.i()) {
            return false;
        }
        this.f8799a.e(dVar.d());
        return true;
    }

    @Override // com.google.firebase.installations.h
    public boolean b(Exception exc) {
        return false;
    }
}
