package n0;

import android.content.Context;
import id.Function2;
import id.p;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.coroutines.jvm.internal.k;
import o0.f;
import xc.m;
import xc.t;
/* loaded from: classes.dex */
public abstract class i {

    /* renamed from: a  reason: collision with root package name */
    private static final Set f26095a = new LinkedHashSet();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class a extends k implements p {

        /* renamed from: a  reason: collision with root package name */
        int f26096a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f26097b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f26098c;

        a(ad.e eVar) {
            super(3, eVar);
        }

        @Override // id.p
        /* renamed from: a */
        public final Object e(m0.c cVar, o0.f fVar, ad.e eVar) {
            a aVar = new a(eVar);
            aVar.f26097b = cVar;
            aVar.f26098c = fVar;
            return aVar.invokeSuspend(t.f32733a);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            int r10;
            bd.d.e();
            if (this.f26096a == 0) {
                m.b(obj);
                m0.c cVar = (m0.c) this.f26097b;
                o0.f fVar = (o0.f) this.f26098c;
                Set<f.a> keySet = fVar.a().keySet();
                r10 = yc.p.r(keySet, 10);
                ArrayList arrayList = new ArrayList(r10);
                for (f.a aVar : keySet) {
                    arrayList.add(aVar.a());
                }
                Map a10 = cVar.a();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Map.Entry entry : a10.entrySet()) {
                    if (!arrayList.contains((String) entry.getKey())) {
                        linkedHashMap.put(entry.getKey(), entry.getValue());
                    }
                }
                o0.c c10 = fVar.c();
                for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                    String str = (String) entry2.getKey();
                    Object value = entry2.getValue();
                    if (value instanceof Boolean) {
                        c10.j(o0.h.a(str), value);
                    } else if (value instanceof Float) {
                        c10.j(o0.h.d(str), value);
                    } else if (value instanceof Integer) {
                        c10.j(o0.h.e(str), value);
                    } else if (value instanceof Long) {
                        c10.j(o0.h.f(str), value);
                    } else if (value instanceof String) {
                        c10.j(o0.h.g(str), value);
                    } else if (value instanceof Set) {
                        f.a h10 = o0.h.h(str);
                        kotlin.jvm.internal.m.c(value, "null cannot be cast to non-null type kotlin.collections.Set<kotlin.String>");
                        c10.j(h10, (Set) value);
                    }
                }
                return c10.d();
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f26099a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f26100b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Set f26101c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Set set, ad.e eVar) {
            super(2, eVar);
            this.f26101c = set;
        }

        @Override // id.Function2
        /* renamed from: a */
        public final Object invoke(o0.f fVar, ad.e eVar) {
            return ((b) create(fVar, eVar)).invokeSuspend(t.f32733a);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            b bVar = new b(this.f26101c, eVar);
            bVar.f26100b = obj;
            return bVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            int r10;
            bd.d.e();
            if (this.f26099a == 0) {
                m.b(obj);
                Set<f.a> keySet = ((o0.f) this.f26100b).a().keySet();
                r10 = yc.p.r(keySet, 10);
                ArrayList arrayList = new ArrayList(r10);
                for (f.a aVar : keySet) {
                    arrayList.add(aVar.a());
                }
                boolean z10 = true;
                if (this.f26101c != i.c()) {
                    Set<String> set = this.f26101c;
                    if (!(set instanceof Collection) || !set.isEmpty()) {
                        for (String str : set) {
                            if (!arrayList.contains(str)) {
                                break;
                            }
                        }
                    }
                    z10 = false;
                }
                return kotlin.coroutines.jvm.internal.b.a(z10);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public static final m0.a a(Context context, String sharedPreferencesName, Set keysToMigrate) {
        kotlin.jvm.internal.m.e(context, "context");
        kotlin.jvm.internal.m.e(sharedPreferencesName, "sharedPreferencesName");
        kotlin.jvm.internal.m.e(keysToMigrate, "keysToMigrate");
        if (keysToMigrate == f26095a) {
            return new m0.a(context, sharedPreferencesName, null, e(keysToMigrate), d(), 4, null);
        }
        return new m0.a(context, sharedPreferencesName, keysToMigrate, e(keysToMigrate), d());
    }

    public static /* synthetic */ m0.a b(Context context, String str, Set set, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            set = f26095a;
        }
        return a(context, str, set);
    }

    public static final Set c() {
        return f26095a;
    }

    private static final p d() {
        return new a(null);
    }

    private static final Function2 e(Set set) {
        return new b(set, null);
    }
}
