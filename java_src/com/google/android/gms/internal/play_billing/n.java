package com.google.android.gms.internal.play_billing;

import java.util.Set;
/* loaded from: classes.dex */
public abstract class n extends g implements Set {

    /* renamed from: b  reason: collision with root package name */
    private transient j f7073b;

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this || obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                if (size() == set.size()) {
                    if (containsAll(set)) {
                        return true;
                    }
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        return w.a(this);
    }

    @Override // com.google.android.gms.internal.play_billing.g
    public j l() {
        j jVar = this.f7073b;
        if (jVar == null) {
            j o10 = o();
            this.f7073b = o10;
            return o10;
        }
        return jVar;
    }

    j o() {
        Object[] array = toArray();
        int i10 = j.f7016c;
        return j.p(array, array.length);
    }
}
