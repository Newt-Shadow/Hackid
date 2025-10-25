package ad;

import ad.i;
import id.Function2;
import java.io.Serializable;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class d implements i, Serializable {

    /* renamed from: a  reason: collision with root package name */
    private final i f291a;

    /* renamed from: b  reason: collision with root package name */
    private final i.b f292b;

    public d(i left, i.b element) {
        m.e(left, "left");
        m.e(element, "element");
        this.f291a = left;
        this.f292b = element;
    }

    private final boolean f(i.b bVar) {
        return m.a(a(bVar.getKey()), bVar);
    }

    private final boolean h(d dVar) {
        while (f(dVar.f292b)) {
            i iVar = dVar.f291a;
            if (iVar instanceof d) {
                dVar = (d) iVar;
            } else {
                m.c(iVar, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element");
                return f((i.b) iVar);
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String i(String acc, i.b element) {
        boolean z10;
        m.e(acc, "acc");
        m.e(element, "element");
        if (acc.length() == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            return element.toString();
        }
        return acc + ", " + element;
    }

    private final int size() {
        int i10 = 2;
        d dVar = this;
        while (true) {
            i iVar = dVar.f291a;
            if (iVar instanceof d) {
                dVar = (d) iVar;
            } else {
                dVar = null;
            }
            if (dVar == null) {
                return i10;
            }
            i10++;
        }
    }

    @Override // ad.i
    public i.b a(i.c key) {
        m.e(key, "key");
        d dVar = this;
        while (true) {
            i.b a10 = dVar.f292b.a(key);
            if (a10 != null) {
                return a10;
            }
            i iVar = dVar.f291a;
            if (iVar instanceof d) {
                dVar = (d) iVar;
            } else {
                return iVar.a(key);
            }
        }
    }

    @Override // ad.i
    public i e(i iVar) {
        return i.a.b(this, iVar);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof d) {
                d dVar = (d) obj;
                if (dVar.size() != size() || !dVar.h(this)) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // ad.i
    public i g(i.c key) {
        m.e(key, "key");
        if (this.f292b.a(key) != null) {
            return this.f291a;
        }
        i g10 = this.f291a.g(key);
        if (g10 == this.f291a) {
            return this;
        }
        if (g10 == j.f295a) {
            return this.f292b;
        }
        return new d(g10, this.f292b);
    }

    public int hashCode() {
        return this.f291a.hashCode() + this.f292b.hashCode();
    }

    @Override // ad.i
    public Object k(Object obj, Function2 operation) {
        m.e(operation, "operation");
        return operation.invoke(this.f291a.k(obj, operation), this.f292b);
    }

    public String toString() {
        return '[' + ((String) k("", new Function2() { // from class: ad.c
            @Override // id.Function2
            public final Object invoke(Object obj, Object obj2) {
                String i10;
                i10 = d.i((String) obj, (i.b) obj2);
                return i10;
            }
        })) + ']';
    }
}
