package qd;

import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class j extends h {

    /* loaded from: classes2.dex */
    public static final class a implements e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Iterator f28753a;

        public a(Iterator it) {
            this.f28753a = it;
        }

        @Override // qd.e
        public Iterator iterator() {
            return this.f28753a;
        }
    }

    public static e b(Iterator it) {
        e c10;
        kotlin.jvm.internal.m.e(it, "<this>");
        c10 = c(new a(it));
        return c10;
    }

    public static e c(e eVar) {
        kotlin.jvm.internal.m.e(eVar, "<this>");
        if (!(eVar instanceof qd.a)) {
            return new qd.a(eVar);
        }
        return eVar;
    }

    public static e d(final id.a nextFunction) {
        e c10;
        kotlin.jvm.internal.m.e(nextFunction, "nextFunction");
        c10 = c(new d(nextFunction, new id.l() { // from class: qd.i
            @Override // id.l
            public final Object invoke(Object obj) {
                Object e10;
                e10 = j.e(id.a.this, obj);
                return e10;
            }
        }));
        return c10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object e(id.a aVar, Object it) {
        kotlin.jvm.internal.m.e(it, "it");
        return aVar.invoke();
    }
}
