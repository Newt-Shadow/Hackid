package eb;

import java.util.Map;
import java.util.UUID;
/* loaded from: classes.dex */
public interface h {

    /* loaded from: classes.dex */
    public static final class a {
        public static /* synthetic */ void a(h hVar, String str, String str2, Map map, Map map2, Map map3, Map map4, int i10, Object obj) {
            String str3;
            Map map5;
            Map map6;
            Map map7;
            if (obj == null) {
                Map map8 = null;
                if ((i10 & 2) != 0) {
                    str3 = null;
                } else {
                    str3 = str2;
                }
                if ((i10 & 4) != 0) {
                    map5 = null;
                } else {
                    map5 = map;
                }
                if ((i10 & 8) != 0) {
                    map6 = null;
                } else {
                    map6 = map2;
                }
                if ((i10 & 16) != 0) {
                    map7 = null;
                } else {
                    map7 = map3;
                }
                if ((i10 & 32) == 0) {
                    map8 = map4;
                }
                hVar.n(str, str3, map5, map6, map7, map8);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: capture");
        }

        public static /* synthetic */ Object b(h hVar, String str, Object obj, int i10, Object obj2) {
            if (obj2 == null) {
                if ((i10 & 2) != 0) {
                    obj = null;
                }
                return hVar.o(str, obj);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getFeatureFlag");
        }

        public static /* synthetic */ Object c(h hVar, String str, Object obj, int i10, Object obj2) {
            if (obj2 == null) {
                if ((i10 & 2) != 0) {
                    obj = null;
                }
                return hVar.t(str, obj);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getFeatureFlagPayload");
        }

        public static /* synthetic */ boolean d(h hVar, String str, boolean z10, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 2) != 0) {
                    z10 = false;
                }
                return hVar.r(str, z10);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: isFeatureEnabled");
        }

        public static /* synthetic */ void e(h hVar, i iVar, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 1) != 0) {
                    iVar = null;
                }
                hVar.u(iVar);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: reloadFeatureFlags");
        }

        public static /* synthetic */ void f(h hVar, String str, Map map, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 2) != 0) {
                    map = null;
                }
                hVar.i(str, map);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: screen");
        }
    }

    void a();

    void close();

    void e();

    void f();

    void flush();

    void g();

    d getConfig();

    UUID getSessionId();

    void h(String str);

    void i(String str, Map map);

    void j(d dVar);

    void k(boolean z10);

    void l();

    void m(String str);

    void n(String str, String str2, Map map, Map map2, Map map3, Map map4);

    Object o(String str, Object obj);

    boolean p();

    String q();

    boolean r(String str, boolean z10);

    void s(String str, Map map, Map map2);

    Object t(String str, Object obj);

    void u(i iVar);

    void v(String str, Object obj);

    void w(String str, String str2, Map map);
}
