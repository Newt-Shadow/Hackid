package com.google.firebase.messaging;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.google.firebase.messaging.e;
import java.util.Map;
/* loaded from: classes.dex */
public final class u0 extends o5.a {
    public static final Parcelable.Creator<u0> CREATOR = new v0();

    /* renamed from: a  reason: collision with root package name */
    Bundle f8977a;

    /* renamed from: b  reason: collision with root package name */
    private Map f8978b;

    /* renamed from: c  reason: collision with root package name */
    private c f8979c;

    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final Bundle f8980a;

        /* renamed from: b  reason: collision with root package name */
        private final Map f8981b;

        public b(String str) {
            Bundle bundle = new Bundle();
            this.f8980a = bundle;
            this.f8981b = new r.a();
            if (!TextUtils.isEmpty(str)) {
                bundle.putString("google.to", str);
                return;
            }
            throw new IllegalArgumentException("Invalid to: " + str);
        }

        public u0 a() {
            Bundle bundle = new Bundle();
            for (Map.Entry entry : this.f8981b.entrySet()) {
                bundle.putString((String) entry.getKey(), (String) entry.getValue());
            }
            bundle.putAll(this.f8980a);
            this.f8980a.remove("from");
            return new u0(bundle);
        }

        public b b(String str) {
            this.f8980a.putString("collapse_key", str);
            return this;
        }

        public b c(Map map) {
            this.f8981b.clear();
            this.f8981b.putAll(map);
            return this;
        }

        public b d(String str) {
            this.f8980a.putString("google.message_id", str);
            return this;
        }

        public b e(String str) {
            this.f8980a.putString("message_type", str);
            return this;
        }

        public b f(int i10) {
            this.f8980a.putString("google.ttl", String.valueOf(i10));
            return this;
        }
    }

    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final String f8982a;

        /* renamed from: b  reason: collision with root package name */
        private final String f8983b;

        /* renamed from: c  reason: collision with root package name */
        private final String[] f8984c;

        /* renamed from: d  reason: collision with root package name */
        private final String f8985d;

        /* renamed from: e  reason: collision with root package name */
        private final String f8986e;

        /* renamed from: f  reason: collision with root package name */
        private final String[] f8987f;

        /* renamed from: g  reason: collision with root package name */
        private final String f8988g;

        /* renamed from: h  reason: collision with root package name */
        private final String f8989h;

        /* renamed from: i  reason: collision with root package name */
        private final String f8990i;

        /* renamed from: j  reason: collision with root package name */
        private final String f8991j;

        /* renamed from: k  reason: collision with root package name */
        private final String f8992k;

        /* renamed from: l  reason: collision with root package name */
        private final String f8993l;

        /* renamed from: m  reason: collision with root package name */
        private final String f8994m;

        /* renamed from: n  reason: collision with root package name */
        private final Uri f8995n;

        /* renamed from: o  reason: collision with root package name */
        private final String f8996o;

        /* renamed from: p  reason: collision with root package name */
        private final Integer f8997p;

        /* renamed from: q  reason: collision with root package name */
        private final Integer f8998q;

        /* renamed from: r  reason: collision with root package name */
        private final Integer f8999r;

        /* renamed from: s  reason: collision with root package name */
        private final int[] f9000s;

        /* renamed from: t  reason: collision with root package name */
        private final Long f9001t;

        /* renamed from: u  reason: collision with root package name */
        private final boolean f9002u;

        /* renamed from: v  reason: collision with root package name */
        private final boolean f9003v;

        /* renamed from: w  reason: collision with root package name */
        private final boolean f9004w;

        /* renamed from: x  reason: collision with root package name */
        private final boolean f9005x;

        /* renamed from: y  reason: collision with root package name */
        private final boolean f9006y;

        /* renamed from: z  reason: collision with root package name */
        private final long[] f9007z;

        private static String[] j(m0 m0Var, String str) {
            Object[] g10 = m0Var.g(str);
            if (g10 == null) {
                return null;
            }
            String[] strArr = new String[g10.length];
            for (int i10 = 0; i10 < g10.length; i10++) {
                strArr[i10] = String.valueOf(g10[i10]);
            }
            return strArr;
        }

        public String a() {
            return this.f8985d;
        }

        public String[] b() {
            return this.f8987f;
        }

        public String c() {
            return this.f8986e;
        }

        public String d() {
            return this.f8994m;
        }

        public String e() {
            return this.f8993l;
        }

        public String f() {
            return this.f8992k;
        }

        public String g() {
            return this.f8988g;
        }

        public Uri h() {
            String str = this.f8989h;
            if (str != null) {
                return Uri.parse(str);
            }
            return null;
        }

        public Uri i() {
            return this.f8995n;
        }

        public Integer k() {
            return this.f8999r;
        }

        public Integer l() {
            return this.f8997p;
        }

        public String m() {
            return this.f8990i;
        }

        public String n() {
            return this.f8991j;
        }

        public String o() {
            return this.f8996o;
        }

        public String p() {
            return this.f8982a;
        }

        public String[] q() {
            return this.f8984c;
        }

        public String r() {
            return this.f8983b;
        }

        public Integer s() {
            return this.f8998q;
        }

        private c(m0 m0Var) {
            this.f8982a = m0Var.p("gcm.n.title");
            this.f8983b = m0Var.h("gcm.n.title");
            this.f8984c = j(m0Var, "gcm.n.title");
            this.f8985d = m0Var.p("gcm.n.body");
            this.f8986e = m0Var.h("gcm.n.body");
            this.f8987f = j(m0Var, "gcm.n.body");
            this.f8988g = m0Var.p("gcm.n.icon");
            this.f8990i = m0Var.o();
            this.f8991j = m0Var.p("gcm.n.tag");
            this.f8992k = m0Var.p("gcm.n.color");
            this.f8993l = m0Var.p("gcm.n.click_action");
            this.f8994m = m0Var.p("gcm.n.android_channel_id");
            this.f8995n = m0Var.f();
            this.f8989h = m0Var.p("gcm.n.image");
            this.f8996o = m0Var.p("gcm.n.ticker");
            this.f8997p = m0Var.b("gcm.n.notification_priority");
            this.f8998q = m0Var.b("gcm.n.visibility");
            this.f8999r = m0Var.b("gcm.n.notification_count");
            this.f9002u = m0Var.a("gcm.n.sticky");
            this.f9003v = m0Var.a("gcm.n.local_only");
            this.f9004w = m0Var.a("gcm.n.default_sound");
            this.f9005x = m0Var.a("gcm.n.default_vibrate_timings");
            this.f9006y = m0Var.a("gcm.n.default_light_settings");
            this.f9001t = m0Var.j("gcm.n.event_time");
            this.f9000s = m0Var.e();
            this.f9007z = m0Var.q();
        }
    }

    public u0(Bundle bundle) {
        this.f8977a = bundle;
    }

    private int n(String str) {
        if ("high".equals(str)) {
            return 1;
        }
        if ("normal".equals(str)) {
            return 2;
        }
        return 0;
    }

    public int C() {
        Object obj = this.f8977a.get("google.ttl");
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (obj instanceof String) {
            try {
                return Integer.parseInt((String) obj);
            } catch (NumberFormatException unused) {
                Log.w("FirebaseMessaging", "Invalid TTL: " + obj);
                return 0;
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void D(Intent intent) {
        intent.putExtras(this.f8977a);
    }

    public String g() {
        return this.f8977a.getString("collapse_key");
    }

    public Map i() {
        if (this.f8978b == null) {
            this.f8978b = e.a.a(this.f8977a);
        }
        return this.f8978b;
    }

    public String l() {
        return this.f8977a.getString("from");
    }

    public String m() {
        String string = this.f8977a.getString("google.message_id");
        if (string == null) {
            return this.f8977a.getString("message_id");
        }
        return string;
    }

    public String o() {
        return this.f8977a.getString("message_type");
    }

    public c p() {
        if (this.f8979c == null && m0.t(this.f8977a)) {
            this.f8979c = new c(new m0(this.f8977a));
        }
        return this.f8979c;
    }

    public int r() {
        String string = this.f8977a.getString("google.original_priority");
        if (string == null) {
            string = this.f8977a.getString("google.priority");
        }
        return n(string);
    }

    public long s() {
        Object obj = this.f8977a.get("google.sent_time");
        if (obj instanceof Long) {
            return ((Long) obj).longValue();
        }
        if (obj instanceof String) {
            try {
                return Long.parseLong((String) obj);
            } catch (NumberFormatException unused) {
                Log.w("FirebaseMessaging", "Invalid sent time: " + obj);
                return 0L;
            }
        }
        return 0L;
    }

    public String t() {
        return this.f8977a.getString("google.to");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        v0.c(this, parcel, i10);
    }
}
