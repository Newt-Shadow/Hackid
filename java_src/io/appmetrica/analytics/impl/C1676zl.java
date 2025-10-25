package io.appmetrica.analytics.impl;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import io.appmetrica.analytics.AdvIdentifiersResult;
import io.appmetrica.analytics.StartupParamsCallback;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.internal.IdentifiersResult;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
/* renamed from: io.appmetrica.analytics.impl.zl  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1676zl implements Al {

    /* renamed from: k  reason: collision with root package name */
    public static final Map f21072k = Collections.unmodifiableMap(new C1601wl());

    /* renamed from: a  reason: collision with root package name */
    public final List f21073a;

    /* renamed from: b  reason: collision with root package name */
    public final C1598wi f21074b;

    /* renamed from: c  reason: collision with root package name */
    public final Hl f21075c;

    /* renamed from: d  reason: collision with root package name */
    public final Handler f21076d;

    /* renamed from: e  reason: collision with root package name */
    public PublicLogger f21077e;

    /* renamed from: f  reason: collision with root package name */
    public final C1626xl f21078f;

    /* renamed from: g  reason: collision with root package name */
    public final Object f21079g;

    /* renamed from: h  reason: collision with root package name */
    public final WeakHashMap f21080h;

    /* renamed from: i  reason: collision with root package name */
    public HashMap f21081i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f21082j;

    public C1676zl(Context context, C1598wi c1598wi, Te te2, Handler handler) {
        this(c1598wi, new Hl(context, te2), handler);
    }

    public final void a(StartupParamsCallback startupParamsCallback, List<String> list, Map<String, String> map) {
        synchronized (this.f21079g) {
            Hl hl = this.f21075c;
            hl.getClass();
            if (!Rn.a((Map) map) && !Rn.a(map, hl.f18330e)) {
                hl.f18330e = new HashMap(map);
                hl.f18332g = true;
                hl.c();
            }
            a(startupParamsCallback, list);
            if (this.f21075c.a((List) list)) {
                a(list, new C1651yl(this, startupParamsCallback), map);
            } else {
                a(new Bundle(), startupParamsCallback);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x00b1 A[Catch: all -> 0x0115, TryCatch #0 {, blocks: (B:4:0x0063, B:6:0x0071, B:10:0x0082, B:12:0x00b1, B:13:0x00b8, B:15:0x00be, B:16:0x00c5, B:18:0x00da, B:21:0x00e5, B:22:0x00f1, B:19:0x00df, B:9:0x007f), top: B:29:0x0063 }] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00be A[Catch: all -> 0x0115, TryCatch #0 {, blocks: (B:4:0x0063, B:6:0x0071, B:10:0x0082, B:12:0x00b1, B:13:0x00b8, B:15:0x00be, B:16:0x00c5, B:18:0x00da, B:21:0x00e5, B:22:0x00f1, B:19:0x00df, B:9:0x007f), top: B:29:0x0063 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00da A[Catch: all -> 0x0115, TryCatch #0 {, blocks: (B:4:0x0063, B:6:0x0071, B:10:0x0082, B:12:0x00b1, B:13:0x00b8, B:15:0x00be, B:16:0x00c5, B:18:0x00da, B:21:0x00e5, B:22:0x00f1, B:19:0x00df, B:9:0x007f), top: B:29:0x0063 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00df A[Catch: all -> 0x0115, TryCatch #0 {, blocks: (B:4:0x0063, B:6:0x0071, B:10:0x0082, B:12:0x00b1, B:13:0x00b8, B:15:0x00be, B:16:0x00c5, B:18:0x00da, B:21:0x00e5, B:22:0x00f1, B:19:0x00df, B:9:0x007f), top: B:29:0x0063 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00e5 A[Catch: all -> 0x0115, TryCatch #0 {, blocks: (B:4:0x0063, B:6:0x0071, B:10:0x0082, B:12:0x00b1, B:13:0x00b8, B:15:0x00be, B:16:0x00c5, B:18:0x00da, B:21:0x00e5, B:22:0x00f1, B:19:0x00df, B:9:0x007f), top: B:29:0x0063 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(android.os.Bundle r20) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.impl.C1676zl.b(android.os.Bundle):void");
    }

    public final L6 c() {
        return this.f21078f;
    }

    public final String d() {
        IdentifiersResult identifiersResult = (IdentifiersResult) this.f21075c.f18327b.get(StartupParamsCallback.APPMETRICA_DEVICE_ID);
        if (identifiersResult == null) {
            return null;
        }
        return identifiersResult.f21091id;
    }

    public final C1266ja e() {
        C1217ha c1217ha;
        Hl hl = this.f21075c;
        C1142ea c1142ea = hl.f18339n;
        C1167fa c1167fa = hl.f18338m;
        synchronized (c1167fa) {
            c1217ha = c1167fa.f19638b;
        }
        c1142ea.getClass();
        Boolean bool = c1217ha.f19730a;
        return new C1266ja();
    }

    public final long f() {
        return this.f21075c.f18331f;
    }

    public final String g() {
        IdentifiersResult identifiersResult = (IdentifiersResult) this.f21075c.f18327b.get(StartupParamsCallback.APPMETRICA_UUID);
        if (identifiersResult == null) {
            return null;
        }
        return identifiersResult.f21091id;
    }

    public final void h() {
        WeakHashMap weakHashMap = new WeakHashMap();
        for (Map.Entry entry : this.f21080h.entrySet()) {
            List list = (List) entry.getValue();
            if (this.f21075c.a((Collection) list)) {
                weakHashMap.put((StartupParamsCallback) entry.getKey(), list);
            }
        }
        for (Map.Entry entry2 : weakHashMap.entrySet()) {
            StartupParamsCallback startupParamsCallback = (StartupParamsCallback) entry2.getKey();
            if (startupParamsCallback != null) {
                a(new Bundle(), startupParamsCallback);
            }
        }
        weakHashMap.clear();
    }

    public final void i() {
        synchronized (this.f21079g) {
            if (!this.f21082j || this.f21075c.b()) {
                this.f21082j = true;
                a(this.f21073a, this.f21078f, this.f21081i);
            }
        }
    }

    public C1676zl(C1598wi c1598wi, Hl hl, Handler handler) {
        this.f21073a = Arrays.asList(StartupParamsCallback.APPMETRICA_UUID, StartupParamsCallback.APPMETRICA_DEVICE_ID, "appmetrica_device_id_hash", "appmetrica_get_ad_url", "appmetrica_report_ad_url", "appmetrica_clids");
        this.f21079g = new Object();
        this.f21080h = new WeakHashMap();
        this.f21082j = false;
        this.f21074b = c1598wi;
        this.f21075c = hl;
        this.f21076d = handler;
        this.f21078f = new C1626xl(this);
    }

    public final void a(Bundle bundle) {
        b(bundle, null);
    }

    public final void a(PublicLogger publicLogger) {
        this.f21077e = publicLogger;
    }

    public final void a(List list, L6 l62, Map map) {
        M6 m62 = new M6(this.f21076d, l62);
        C1598wi c1598wi = this.f21074b;
        c1598wi.getClass();
        Bundle bundle = new Bundle();
        bundle.putParcelable("io.appmetrica.analytics.impl.IdentifiersData", new C1267jb(m62, list, map));
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        PublicLogger anonymousInstance = PublicLogger.getAnonymousInstance();
        Set set = H9.f18290a;
        C1136e4 c1136e4 = new C1136e4("", "", 1536, 0, anonymousInstance);
        c1136e4.f19583m = bundle;
        W4 w42 = c1598wi.f20871a;
        c1598wi.a(C1598wi.a(c1136e4, w42), w42, 1, null);
    }

    public final void a(Map<String, String> map) {
        if (Rn.a((Map) map)) {
            return;
        }
        synchronized (this.f21079g) {
            HashMap b10 = AbstractC1477rm.b(map);
            this.f21081i = b10;
            this.f21074b.a(b10);
            Hl hl = this.f21075c;
            hl.getClass();
            if (!Rn.a((Map) b10) && !Rn.a(b10, hl.f18330e)) {
                hl.f18330e = new HashMap(b10);
                hl.f18332g = true;
                hl.c();
            }
        }
    }

    public final void a(String str) {
        synchronized (this.f21079g) {
            this.f21074b.a(str);
        }
    }

    public final void a(Bundle bundle, StartupParamsCallback startupParamsCallback) {
        EnumC1551ul enumC1551ul;
        if (this.f21080h.containsKey(startupParamsCallback)) {
            List list = (List) this.f21080h.get(startupParamsCallback);
            if (this.f21075c.a((Collection) list)) {
                startupParamsCallback.onReceive(a(list));
            } else {
                StartupParamsCallback.Reason reason = null;
                if (bundle.containsKey("startup_error_key_code")) {
                    int i10 = bundle.getInt("startup_error_key_code");
                    enumC1551ul = EnumC1551ul.UNKNOWN;
                    if (i10 == 1) {
                        enumC1551ul = EnumC1551ul.NETWORK;
                    } else if (i10 == 2) {
                        enumC1551ul = EnumC1551ul.PARSE;
                    }
                } else {
                    enumC1551ul = null;
                }
                if (enumC1551ul == null) {
                    if (!this.f21075c.a()) {
                        PublicLogger publicLogger = this.f21077e;
                        if (publicLogger != null) {
                            publicLogger.warning("Clids error. Passed clids: %s, and clids from server are empty.", this.f21081i);
                        }
                        reason = new StartupParamsCallback.Reason("INCONSISTENT_CLIDS");
                    } else {
                        enumC1551ul = EnumC1551ul.UNKNOWN;
                    }
                }
                if (reason == null) {
                    reason = (StartupParamsCallback.Reason) CollectionUtils.getOrDefault(f21072k, enumC1551ul, StartupParamsCallback.Reason.UNKNOWN);
                }
                startupParamsCallback.onRequestError(reason, a(list));
            }
            this.f21080h.remove(startupParamsCallback);
            if (this.f21080h.isEmpty()) {
                C1207h0 c1207h0 = this.f21074b.f20874d;
                synchronized (c1207h0.f19704f) {
                    c1207h0.f19701c = false;
                    c1207h0.c();
                }
            }
        }
    }

    public final void b(Bundle bundle, StartupParamsCallback startupParamsCallback) {
        synchronized (this.f21079g) {
            b(bundle);
            h();
            if (startupParamsCallback != null) {
                a(bundle, startupParamsCallback);
            }
        }
    }

    public final void b(List<String> list) {
        synchronized (this.f21079g) {
            List list2 = this.f21075c.f18329d;
            if (Rn.a((Collection) list)) {
                if (!Rn.a((Collection) list2)) {
                    Hl hl = this.f21075c;
                    hl.f18329d = null;
                    hl.f18334i.a((List<String>) null);
                    this.f21074b.a((List) null);
                }
            } else if (!Rn.a(list, list2)) {
                Hl hl2 = this.f21075c;
                hl2.f18329d = list;
                hl2.f18334i.a(list);
                this.f21074b.a(list);
            } else {
                this.f21074b.a(list2);
            }
        }
    }

    public final StartupParamsCallback.Result a(List list) {
        HashMap hashMap = new HashMap();
        Hl hl = this.f21075c;
        synchronized (hl) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                IdentifiersResult identifiersResult = (IdentifiersResult) hl.f18327b.get(str);
                if (identifiersResult != null) {
                    hashMap.put(str, hl.f18328c.a(identifiersResult));
                }
            }
            hl.f18337l.a(list, hashMap);
            hl.f18338m.a(list, hashMap);
        }
        return new StartupParamsCallback.Result(hashMap);
    }

    public final void b(String str) {
        synchronized (this.f21079g) {
            this.f21074b.b(str);
        }
    }

    public final Map<String, String> b() {
        IdentifiersResult identifiersResult = (IdentifiersResult) this.f21075c.f18327b.get("appmetrica_clids");
        String str = identifiersResult == null ? null : identifiersResult.f21091id;
        if (!TextUtils.isEmpty(str)) {
            return AbstractC1491sb.a(str);
        }
        return this.f21081i;
    }

    public final void a(StartupParamsCallback startupParamsCallback, List list) {
        if (this.f21080h.isEmpty()) {
            C1207h0 c1207h0 = this.f21074b.f20874d;
            synchronized (c1207h0.f19704f) {
                c1207h0.f19701c = true;
                c1207h0.b();
            }
        }
        this.f21080h.put(startupParamsCallback, list);
    }

    public final AdvIdentifiersResult a() {
        Hl hl = this.f21075c;
        hl.f18335j.getClass();
        return new AdvIdentifiersResult(K.a((IdentifiersResult) hl.f18327b.get("appmetrica_google_adv_id")), K.a((IdentifiersResult) hl.f18327b.get("appmetrica_huawei_oaid")), K.a((IdentifiersResult) hl.f18327b.get("appmetrica_yandex_adv_id")));
    }
}
