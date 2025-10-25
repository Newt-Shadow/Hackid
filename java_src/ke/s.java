package ke;

import ge.f;
import ge.g;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import ke.k;
import yc.h0;
/* loaded from: classes2.dex */
public abstract class s {

    /* renamed from: a  reason: collision with root package name */
    private static final k.a f24921a = new k.a();

    /* renamed from: b  reason: collision with root package name */
    private static final k.a f24922b = new k.a();

    private static final Map b(ge.d dVar, je.b bVar) {
        Map e10;
        Object g02;
        String str;
        String[] names;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        boolean d10 = d(bVar, dVar);
        j(dVar, bVar);
        int f10 = dVar.f();
        for (int i10 = 0; i10 < f10; i10++) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : dVar.h(i10)) {
                if (obj instanceof je.f) {
                    arrayList.add(obj);
                }
            }
            g02 = yc.w.g0(arrayList);
            je.f fVar = (je.f) g02;
            if (fVar != null && (names = fVar.names()) != null) {
                for (String str2 : names) {
                    if (d10) {
                        str2 = str2.toLowerCase(Locale.ROOT);
                        kotlin.jvm.internal.m.d(str2, "toLowerCase(...)");
                    }
                    c(linkedHashMap, dVar, str2, i10);
                }
            }
            if (d10) {
                str = dVar.g(i10).toLowerCase(Locale.ROOT);
                kotlin.jvm.internal.m.d(str, "toLowerCase(...)");
            } else {
                str = null;
            }
            if (str != null) {
                c(linkedHashMap, dVar, str, i10);
            }
        }
        if (linkedHashMap.isEmpty()) {
            e10 = h0.e();
            return e10;
        }
        return linkedHashMap;
    }

    private static final void c(Map map, ge.d dVar, String str, int i10) {
        String str2;
        Object f10;
        if (kotlin.jvm.internal.m.a(dVar.e(), f.b.f16419a)) {
            str2 = "enum value";
        } else {
            str2 = "property";
        }
        if (!map.containsKey(str)) {
            map.put(str, Integer.valueOf(i10));
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("The suggested name '");
        sb2.append(str);
        sb2.append("' for ");
        sb2.append(str2);
        sb2.append(' ');
        sb2.append(dVar.g(i10));
        sb2.append(" is already one of the names for ");
        sb2.append(str2);
        sb2.append(' ');
        f10 = h0.f(map, str);
        sb2.append(dVar.g(((Number) f10).intValue()));
        sb2.append(" in ");
        sb2.append(dVar);
        throw new p(sb2.toString());
    }

    private static final boolean d(je.b bVar, ge.d dVar) {
        if (bVar.c().h() && kotlin.jvm.internal.m.a(dVar.e(), f.b.f16419a)) {
            return true;
        }
        return false;
    }

    public static final Map e(final je.b bVar, final ge.d descriptor) {
        kotlin.jvm.internal.m.e(bVar, "<this>");
        kotlin.jvm.internal.m.e(descriptor, "descriptor");
        return (Map) je.h.a(bVar).b(descriptor, f24921a, new id.a() { // from class: ke.r
            @Override // id.a
            public final Object invoke() {
                Map f10;
                f10 = s.f(ge.d.this, bVar);
                return f10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map f(ge.d dVar, je.b bVar) {
        return b(dVar, bVar);
    }

    public static final String g(ge.d dVar, je.b json, int i10) {
        kotlin.jvm.internal.m.e(dVar, "<this>");
        kotlin.jvm.internal.m.e(json, "json");
        j(dVar, json);
        return dVar.g(i10);
    }

    public static final int h(ge.d dVar, je.b json, String name) {
        kotlin.jvm.internal.m.e(dVar, "<this>");
        kotlin.jvm.internal.m.e(json, "json");
        kotlin.jvm.internal.m.e(name, "name");
        if (d(json, dVar)) {
            String lowerCase = name.toLowerCase(Locale.ROOT);
            kotlin.jvm.internal.m.d(lowerCase, "toLowerCase(...)");
            return i(dVar, json, lowerCase);
        }
        j(dVar, json);
        int d10 = dVar.d(name);
        if (d10 != -3) {
            return d10;
        }
        if (!json.c().o()) {
            return d10;
        }
        return i(dVar, json, name);
    }

    private static final int i(ge.d dVar, je.b bVar, String str) {
        Integer num = (Integer) e(bVar, dVar).get(str);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    public static final je.g j(ge.d dVar, je.b json) {
        kotlin.jvm.internal.m.e(dVar, "<this>");
        kotlin.jvm.internal.m.e(json, "json");
        if (kotlin.jvm.internal.m.a(dVar.e(), g.a.f16420a)) {
            json.c().l();
            return null;
        }
        return null;
    }
}
