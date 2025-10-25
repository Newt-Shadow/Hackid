package com.google.gson;

import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class f extends i implements Iterable {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList f9132a = new ArrayList();

    private i y() {
        int size = this.f9132a.size();
        if (size == 1) {
            return (i) this.f9132a.get(0);
        }
        throw new IllegalStateException("Array must have size 1, but has size " + size);
    }

    @Override // com.google.gson.i
    public boolean d() {
        return y().d();
    }

    public boolean equals(Object obj) {
        if (obj != this && (!(obj instanceof f) || !((f) obj).f9132a.equals(this.f9132a))) {
            return false;
        }
        return true;
    }

    @Override // com.google.gson.i
    public int g() {
        return y().g();
    }

    public int hashCode() {
        return this.f9132a.hashCode();
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return this.f9132a.iterator();
    }

    @Override // com.google.gson.i
    public String n() {
        return y().n();
    }

    public void t(i iVar) {
        if (iVar == null) {
            iVar = k.f9349a;
        }
        this.f9132a.add(iVar);
    }
}
