package com.google.gson;

import com.google.gson.internal.y;
import java.util.Set;
/* loaded from: classes.dex */
public final class l extends i {

    /* renamed from: a  reason: collision with root package name */
    private final y f9350a = new y(false);

    public i A(String str) {
        return (i) this.f9350a.get(str);
    }

    public boolean B(String str) {
        return this.f9350a.containsKey(str);
    }

    public i C(String str) {
        return (i) this.f9350a.remove(str);
    }

    public boolean equals(Object obj) {
        if (obj != this && (!(obj instanceof l) || !((l) obj).f9350a.equals(this.f9350a))) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return this.f9350a.hashCode();
    }

    public void t(String str, i iVar) {
        y yVar = this.f9350a;
        if (iVar == null) {
            iVar = k.f9349a;
        }
        yVar.put(str, iVar);
    }

    public Set y() {
        return this.f9350a.entrySet();
    }
}
