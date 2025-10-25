package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import com.yandex.metrica.core.api.ProtobufStateStorage;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.C0438bi;
import com.yandex.metrica.impl.ob.H1;
import com.yandex.metrica.network.NetworkClient;
import com.yandex.metrica.network.Request;
import com.yandex.metrica.network.Response;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class Jf {

    /* renamed from: i  reason: collision with root package name */
    private static final Map<C0438bi.a, H1.d> f10501i = Collections.unmodifiableMap(new a());

    /* renamed from: a  reason: collision with root package name */
    private final Context f10502a;

    /* renamed from: b  reason: collision with root package name */
    private final ProtobufStateStorage f10503b;

    /* renamed from: c  reason: collision with root package name */
    private final ICommonExecutor f10504c;

    /* renamed from: d  reason: collision with root package name */
    private final C0661kh f10505d;

    /* renamed from: e  reason: collision with root package name */
    private final C0842s2 f10506e;

    /* renamed from: f  reason: collision with root package name */
    private final Rl f10507f;

    /* renamed from: g  reason: collision with root package name */
    private e f10508g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f10509h = false;

    /* loaded from: classes2.dex */
    class a extends HashMap<C0438bi.a, H1.d> {
        a() {
            put(C0438bi.a.CELL, H1.d.CELL);
            put(C0438bi.a.WIFI, H1.d.WIFI);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Jf.a(Jf.this);
        }
    }

    /* loaded from: classes2.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f10511a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ C0787pi f10512b;

        c(List list, C0787pi c0787pi) {
            this.f10511a = list;
            this.f10512b = c0787pi;
        }

        @Override // java.lang.Runnable
        public void run() {
            Jf.a(Jf.this, this.f10511a, this.f10512b.C());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ e.a f10514a;

        d(e.a aVar) {
            this.f10514a = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!Jf.this.f10506e.e()) {
                Jf.this.f10505d.b(this.f10514a);
                e.b bVar = new e.b(this.f10514a);
                Rl rl = Jf.this.f10507f;
                Context context = Jf.this.f10502a;
                ((Ml) rl).getClass();
                H1.d a10 = H1.a(context);
                bVar.a(a10);
                if (a10 == H1.d.OFFLINE) {
                    bVar.a(e.b.a.OFFLINE);
                } else if (!this.f10514a.f10523f.contains(a10)) {
                    bVar.a(e.b.a.INCOMPATIBLE_NETWORK_TYPE);
                } else {
                    Request.Builder d10 = new Request.Builder(this.f10514a.f10519b).d(this.f10514a.f10520c);
                    for (Map.Entry<String, ? extends Collection<String>> entry : this.f10514a.f10521d.a()) {
                        d10.a(entry.getKey(), TextUtils.join(StringUtils.COMMA, entry.getValue()));
                    }
                    NetworkClient.Builder builder = new NetworkClient.Builder();
                    F0.g().t().getClass();
                    NetworkClient.Builder c10 = builder.f(null).c(true);
                    int i10 = C0707md.f12879a;
                    Response execute = c10.b(i10).e(i10).d(102400).a().g(d10.b()).execute();
                    int a11 = execute.a();
                    if (execute.f()) {
                        bVar.a(e.b.a.COMPLETE);
                    } else {
                        bVar.a(e.b.a.ERROR);
                        bVar.a(execute.c());
                    }
                    bVar.a(Integer.valueOf(a11));
                    bVar.f10528e = execute.e();
                    bVar.f10529f = execute.b();
                    bVar.a(execute.d());
                }
                Jf.a(Jf.this, bVar);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class e {

        /* renamed from: a  reason: collision with root package name */
        private final List<a> f10516a;

        /* renamed from: b  reason: collision with root package name */
        private final LinkedHashMap<String, Object> f10517b = new LinkedHashMap<>();

        /* loaded from: classes2.dex */
        public static class a {

            /* renamed from: a  reason: collision with root package name */
            public final String f10518a;

            /* renamed from: b  reason: collision with root package name */
            public final String f10519b;

            /* renamed from: c  reason: collision with root package name */
            public final String f10520c;

            /* renamed from: d  reason: collision with root package name */
            public final C0838rm<String, String> f10521d;

            /* renamed from: e  reason: collision with root package name */
            public final long f10522e;

            /* renamed from: f  reason: collision with root package name */
            public final List<H1.d> f10523f;

            public a(String str, String str2, String str3, C0838rm<String, String> c0838rm, long j10, List<H1.d> list) {
                this.f10518a = str;
                this.f10519b = str2;
                this.f10520c = str3;
                this.f10522e = j10;
                this.f10523f = list;
                this.f10521d = c0838rm;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && a.class == obj.getClass()) {
                    return this.f10518a.equals(((a) obj).f10518a);
                }
                return false;
            }

            public int hashCode() {
                return this.f10518a.hashCode();
            }
        }

        /* loaded from: classes2.dex */
        public static class b {

            /* renamed from: a  reason: collision with root package name */
            private final a f10524a;

            /* renamed from: b  reason: collision with root package name */
            private a f10525b;

            /* renamed from: c  reason: collision with root package name */
            private H1.d f10526c;

            /* renamed from: d  reason: collision with root package name */
            private Integer f10527d;

            /* renamed from: e  reason: collision with root package name */
            byte[] f10528e;

            /* renamed from: f  reason: collision with root package name */
            byte[] f10529f;

            /* renamed from: g  reason: collision with root package name */
            private Map<String, List<String>> f10530g;

            /* renamed from: h  reason: collision with root package name */
            private Throwable f10531h;

            /* loaded from: classes2.dex */
            public enum a {
                OFFLINE,
                INCOMPATIBLE_NETWORK_TYPE,
                COMPLETE,
                ERROR
            }

            public b(a aVar) {
                this.f10524a = aVar;
            }

            public byte[] b() {
                return this.f10529f;
            }

            public Throwable c() {
                return this.f10531h;
            }

            public a d() {
                return this.f10524a;
            }

            public byte[] e() {
                return this.f10528e;
            }

            public Integer f() {
                return this.f10527d;
            }

            public Map<String, List<String>> g() {
                return this.f10530g;
            }

            public a h() {
                return this.f10525b;
            }

            public void a(a aVar) {
                this.f10525b = aVar;
            }

            public H1.d a() {
                return this.f10526c;
            }

            public void a(H1.d dVar) {
                this.f10526c = dVar;
            }

            public void a(Integer num) {
                this.f10527d = num;
            }

            public void a(Map<String, List<String>> map) {
                this.f10530g = map;
            }

            public void a(Throwable th) {
                this.f10531h = th;
            }
        }

        public e(List<a> list, List<String> list2) {
            this.f10516a = list;
            if (!A2.b(list2)) {
                for (String str : list2) {
                    this.f10517b.put(str, new Object());
                }
            }
        }

        public boolean a(a aVar) {
            if (this.f10517b.get(aVar.f10518a) != null || this.f10516a.contains(aVar)) {
                return false;
            }
            this.f10516a.add(aVar);
            return true;
        }

        public List<a> b() {
            return this.f10516a;
        }

        public void b(a aVar) {
            this.f10517b.put(aVar.f10518a, new Object());
            this.f10516a.remove(aVar);
        }

        public Set<String> a() {
            HashSet hashSet = new HashSet();
            int i10 = 0;
            for (String str : this.f10517b.keySet()) {
                hashSet.add(str);
                i10++;
                if (i10 > 1000) {
                    break;
                }
            }
            return hashSet;
        }
    }

    public Jf(Context context, ProtobufStateStorage protobufStateStorage, C0842s2 c0842s2, C0661kh c0661kh, ICommonExecutor iCommonExecutor, Rl rl) {
        this.f10502a = context;
        this.f10503b = protobufStateStorage;
        this.f10506e = c0842s2;
        this.f10505d = c0661kh;
        this.f10508g = (e) protobufStateStorage.read();
        this.f10504c = iCommonExecutor;
        this.f10507f = rl;
    }

    static void a(Jf jf2, List list, long j10) {
        Long l10;
        jf2.getClass();
        if (A2.b(list)) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            C0438bi c0438bi = (C0438bi) it.next();
            if (c0438bi.f12063a != null && c0438bi.f12064b != null && c0438bi.f12065c != null && (l10 = c0438bi.f12067e) != null && l10.longValue() >= 0 && !A2.b(c0438bi.f12068f)) {
                String str = c0438bi.f12063a;
                String str2 = c0438bi.f12064b;
                String str3 = c0438bi.f12065c;
                List<Pair<String, String>> list2 = c0438bi.f12066d;
                C0838rm c0838rm = new C0838rm(false);
                for (Pair<String, String> pair : list2) {
                    c0838rm.a(pair.first, pair.second);
                }
                long millis = TimeUnit.SECONDS.toMillis(c0438bi.f12067e.longValue() + j10);
                List<C0438bi.a> list3 = c0438bi.f12068f;
                ArrayList arrayList = new ArrayList(list3.size());
                for (C0438bi.a aVar : list3) {
                    arrayList.add(f10501i.get(aVar));
                }
                jf2.a(new e.a(str, str2, str3, c0838rm, millis, arrayList));
            }
        }
    }

    private void b(e.a aVar) {
        this.f10504c.executeDelayed(new d(aVar), Math.max(dc.a.f15131c, Math.max(aVar.f10522e - System.currentTimeMillis(), 0L)));
    }

    public synchronized void a() {
        this.f10504c.execute(new b());
    }

    static void a(Jf jf2) {
        if (jf2.f10509h) {
            return;
        }
        e eVar = (e) jf2.f10503b.read();
        jf2.f10508g = eVar;
        for (e.a aVar : eVar.b()) {
            jf2.b(aVar);
        }
        jf2.f10509h = true;
    }

    public synchronized void a(C0787pi c0787pi) {
        this.f10504c.execute(new c(c0787pi.I(), c0787pi));
    }

    private boolean a(e.a aVar) {
        boolean a10 = this.f10508g.a(aVar);
        if (a10) {
            b(aVar);
            this.f10505d.a(aVar);
        }
        this.f10503b.save(this.f10508g);
        return a10;
    }

    static void a(Jf jf2, e.b bVar) {
        synchronized (jf2) {
            jf2.f10508g.b(bVar.f10524a);
            jf2.f10503b.save(jf2.f10508g);
            jf2.f10505d.a(bVar);
        }
    }
}
