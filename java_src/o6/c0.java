package o6;

import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public abstract class c0 {

    /* loaded from: classes.dex */
    private static class a extends c {

        /* renamed from: f  reason: collision with root package name */
        transient n6.s f27391f;

        a(Map map, n6.s sVar) {
            super(map);
            this.f27391f = (n6.s) n6.m.i(sVar);
        }

        @Override // o6.f
        Map c() {
            return q();
        }

        @Override // o6.f
        Set d() {
            return r();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // o6.d
        /* renamed from: x */
        public List o() {
            return (List) this.f27391f.get();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(z zVar, Object obj) {
        if (obj == zVar) {
            return true;
        }
        if (obj instanceof z) {
            return zVar.a().equals(((z) obj).a());
        }
        return false;
    }

    public static v b(Map map, n6.s sVar) {
        return new a(map, sVar);
    }
}
