package i8;

import android.content.Context;
import android.os.Build;
import i6.i0;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.OffsetDateTime;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import o0.f;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class v {

    /* renamed from: b  reason: collision with root package name */
    private static final f.a f17355b = o0.h.f("fire-global");

    /* renamed from: c  reason: collision with root package name */
    private static final f.a f17356c = o0.h.f("fire-count");

    /* renamed from: d  reason: collision with root package name */
    private static final f.a f17357d = o0.h.g("last-used-date");

    /* renamed from: a  reason: collision with root package name */
    private final a8.b f17358a;

    public v(Context context, String str) {
        this.f17358a = new a8.b(context, "FirebaseHeartBeat" + str);
    }

    private synchronized long e(o0.c cVar) {
        long j10;
        long longValue = ((Long) a8.c.a(cVar, f17356c, 0L)).longValue();
        String str = "";
        Set hashSet = new HashSet();
        String str2 = null;
        for (Map.Entry entry : cVar.a().entrySet()) {
            if (entry.getValue() instanceof Set) {
                Set<String> set = (Set) entry.getValue();
                for (String str3 : set) {
                    if (str2 == null || str2.compareTo(str3) > 0) {
                        str = ((f.a) entry.getKey()).a();
                        hashSet = set;
                        str2 = str3;
                    }
                }
            }
        }
        HashSet hashSet2 = new HashSet(hashSet);
        hashSet2.remove(str2);
        cVar.j(o0.h.h(str), hashSet2);
        j10 = longValue - 1;
        cVar.j(f17356c, Long.valueOf(j10));
        return j10;
    }

    private synchronized String h(long j10) {
        Instant instant;
        ZoneOffset zoneOffset;
        OffsetDateTime atOffset;
        LocalDateTime localDateTime;
        DateTimeFormatter dateTimeFormatter;
        String format;
        if (Build.VERSION.SDK_INT >= 26) {
            instant = new Date(j10).toInstant();
            zoneOffset = ZoneOffset.UTC;
            atOffset = instant.atOffset(zoneOffset);
            localDateTime = atOffset.toLocalDateTime();
            dateTimeFormatter = DateTimeFormatter.ISO_LOCAL_DATE;
            format = localDateTime.format(dateTimeFormatter);
            return format;
        }
        return new SimpleDateFormat("yyyy-MM-dd", Locale.UK).format(new Date(j10));
    }

    private synchronized f.a i(o0.c cVar, String str) {
        for (Map.Entry entry : cVar.a().entrySet()) {
            if (entry.getValue() instanceof Set) {
                for (String str2 : (Set) entry.getValue()) {
                    if (str.equals(str2)) {
                        return o0.h.h(((f.a) entry.getKey()).a());
                    }
                }
                continue;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ xc.t k(o0.c cVar) {
        Set a10;
        long j10 = 0;
        for (Map.Entry entry : cVar.a().entrySet()) {
            if (entry.getValue() instanceof Set) {
                f.a aVar = (f.a) entry.getKey();
                String h10 = h(System.currentTimeMillis());
                if (((Set) entry.getValue()).contains(h10)) {
                    a10 = i0.a(new Object[]{h10});
                    cVar.j(aVar, a10);
                    j10++;
                } else {
                    cVar.i(aVar);
                }
            }
        }
        if (j10 == 0) {
            cVar.i(f17356c);
            return null;
        }
        cVar.j(f17356c, Long.valueOf(j10));
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ xc.t l(String str, o0.c cVar) {
        cVar.j(f17357d, str);
        p(cVar, str);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ xc.t m(String str, String str2, f.a aVar, o0.c cVar) {
        f.a aVar2 = f17357d;
        if (((String) a8.c.a(cVar, aVar2, "")).equals(str)) {
            f.a i10 = i(cVar, str);
            if (i10 == null || i10.a().equals(str2)) {
                return null;
            }
            u(cVar, aVar, str);
            return null;
        }
        f.a aVar3 = f17356c;
        long longValue = ((Long) a8.c.a(cVar, aVar3, 0L)).longValue();
        if (longValue + 1 == 30) {
            longValue = e(cVar);
        }
        HashSet hashSet = new HashSet((Collection) a8.c.a(cVar, aVar, new HashSet()));
        hashSet.add(str);
        cVar.j(aVar, hashSet);
        cVar.j(aVar3, Long.valueOf(longValue + 1));
        cVar.j(aVar2, str);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ xc.t n(long j10, o0.c cVar) {
        cVar.j(f17355b, Long.valueOf(j10));
        return null;
    }

    private synchronized void p(o0.c cVar, String str) {
        f.a i10 = i(cVar, str);
        if (i10 == null) {
            return;
        }
        HashSet hashSet = new HashSet((Collection) a8.c.a(cVar, i10, new HashSet()));
        hashSet.remove(str);
        if (hashSet.isEmpty()) {
            cVar.i(i10);
        } else {
            cVar.j(i10, hashSet);
        }
    }

    private synchronized void u(o0.c cVar, f.a aVar, String str) {
        p(cVar, str);
        HashSet hashSet = new HashSet((Collection) a8.c.a(cVar, aVar, new HashSet()));
        hashSet.add(str);
        cVar.j(aVar, hashSet);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void f() {
        this.f17358a.e(new id.l() { // from class: i8.s
            @Override // id.l
            public final Object invoke(Object obj) {
                xc.t k10;
                k10 = v.this.k((o0.c) obj);
                return k10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized List g() {
        ArrayList arrayList;
        arrayList = new ArrayList();
        String h10 = h(System.currentTimeMillis());
        for (Map.Entry entry : this.f17358a.f().entrySet()) {
            if (entry.getValue() instanceof Set) {
                HashSet hashSet = new HashSet((Set) entry.getValue());
                hashSet.remove(h10);
                if (!hashSet.isEmpty()) {
                    arrayList.add(w.a(((f.a) entry.getKey()).a(), new ArrayList(hashSet)));
                }
            }
        }
        t(System.currentTimeMillis());
        return arrayList;
    }

    synchronized boolean j(long j10, long j11) {
        return h(j10).equals(h(j11));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void o() {
        final String h10 = h(System.currentTimeMillis());
        this.f17358a.e(new id.l() { // from class: i8.u
            @Override // id.l
            public final Object invoke(Object obj) {
                xc.t l10;
                l10 = v.this.l(h10, (o0.c) obj);
                return l10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean q(long j10) {
        return r(f17355b, j10);
    }

    synchronized boolean r(f.a aVar, long j10) {
        if (j(((Long) this.f17358a.h(aVar, -1L)).longValue(), j10)) {
            return false;
        }
        this.f17358a.i(aVar, Long.valueOf(j10));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void s(long j10, final String str) {
        final String h10 = h(j10);
        final f.a h11 = o0.h.h(str);
        this.f17358a.e(new id.l() { // from class: i8.t
            @Override // id.l
            public final Object invoke(Object obj) {
                xc.t m10;
                m10 = v.this.m(h10, str, h11, (o0.c) obj);
                return m10;
            }
        });
    }

    synchronized void t(final long j10) {
        this.f17358a.e(new id.l() { // from class: i8.r
            @Override // id.l
            public final Object invoke(Object obj) {
                xc.t n10;
                n10 = v.n(j10, (o0.c) obj);
                return n10;
            }
        });
    }
}
