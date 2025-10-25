package com.google.firebase.installations;

import m6.l;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class e implements h {

    /* renamed from: a  reason: collision with root package name */
    private final i f8797a;

    /* renamed from: b  reason: collision with root package name */
    private final l f8798b;

    public e(i iVar, l lVar) {
        this.f8797a = iVar;
        this.f8798b = lVar;
    }

    @Override // com.google.firebase.installations.h
    public boolean a(m8.d dVar) {
        if (dVar.k() && !this.f8797a.f(dVar)) {
            this.f8798b.c(g.a().b(dVar.b()).d(dVar.c()).c(dVar.h()).a());
            return true;
        }
        return false;
    }

    @Override // com.google.firebase.installations.h
    public boolean b(Exception exc) {
        this.f8798b.d(exc);
        return true;
    }
}
