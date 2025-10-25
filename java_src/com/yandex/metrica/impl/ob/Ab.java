package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public final class Ab {

    /* renamed from: a  reason: collision with root package name */
    private final String f9709a;

    /* renamed from: b  reason: collision with root package name */
    private final wb.c f9710b;

    public Ab(String str, wb.c cVar) {
        this.f9709a = str;
        this.f9710b = cVar;
    }

    public final String a() {
        return this.f9709a;
    }

    public final wb.c b() {
        return this.f9710b;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof Ab) {
                Ab ab2 = (Ab) obj;
                return kotlin.jvm.internal.m.a(this.f9709a, ab2.f9709a) && kotlin.jvm.internal.m.a(this.f9710b, ab2.f9710b);
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f9709a;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        wb.c cVar = this.f9710b;
        return hashCode + (cVar != null ? cVar.hashCode() : 0);
    }

    public String toString() {
        return "AppSetId(id=" + this.f9709a + ", scope=" + this.f9710b + ")";
    }
}
