package io.appmetrica.analytics.impl;

import android.util.SparseArray;
import java.util.Calendar;
import java.util.Collections;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class Lf {

    /* renamed from: a  reason: collision with root package name */
    public static final Map f18534a;

    /* renamed from: b  reason: collision with root package name */
    public static final SparseArray f18535b;

    /* renamed from: c  reason: collision with root package name */
    public static final Map f18536c;

    /* renamed from: d  reason: collision with root package name */
    public static final Map f18537d;

    static {
        HashMap hashMap = new HashMap();
        Ik ik = Ik.FOREGROUND;
        hashMap.put(ik, 0);
        Ik ik2 = Ik.BACKGROUND;
        hashMap.put(ik2, 1);
        f18534a = Collections.unmodifiableMap(hashMap);
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, ik);
        sparseArray.put(1, ik2);
        f18535b = sparseArray;
        HashMap hashMap2 = new HashMap();
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_INIT;
        hashMap2.put(enumC1367nb, 1);
        EnumC1367nb enumC1367nb2 = EnumC1367nb.EVENT_TYPE_REGULAR;
        hashMap2.put(enumC1367nb2, 4);
        EnumC1367nb enumC1367nb3 = EnumC1367nb.EVENT_TYPE_SEND_REFERRER;
        hashMap2.put(enumC1367nb3, 5);
        EnumC1367nb enumC1367nb4 = EnumC1367nb.EVENT_TYPE_ALIVE;
        hashMap2.put(enumC1367nb4, 7);
        EnumC1367nb enumC1367nb5 = EnumC1367nb.EVENT_TYPE_EXCEPTION_UNHANDLED_PROTOBUF;
        hashMap2.put(enumC1367nb5, 26);
        EnumC1367nb enumC1367nb6 = EnumC1367nb.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_INTENT;
        hashMap2.put(enumC1367nb6, 26);
        EnumC1367nb enumC1367nb7 = EnumC1367nb.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_FILE;
        hashMap2.put(enumC1367nb7, 26);
        EnumC1367nb enumC1367nb8 = EnumC1367nb.EVENT_TYPE_ANR;
        hashMap2.put(enumC1367nb8, 25);
        EnumC1367nb enumC1367nb9 = EnumC1367nb.EVENT_TYPE_PREV_SESSION_NATIVE_CRASH_PROTOBUF;
        hashMap2.put(enumC1367nb9, 26);
        EnumC1367nb enumC1367nb10 = EnumC1367nb.EVENT_TYPE_CURRENT_SESSION_NATIVE_CRASH_PROTOBUF;
        hashMap2.put(enumC1367nb10, 26);
        EnumC1367nb enumC1367nb11 = EnumC1367nb.EVENT_TYPE_EXCEPTION_USER_PROTOBUF;
        hashMap2.put(enumC1367nb11, 27);
        EnumC1367nb enumC1367nb12 = EnumC1367nb.EVENT_TYPE_EXCEPTION_USER_CUSTOM_PROTOBUF;
        hashMap2.put(enumC1367nb12, 27);
        EnumC1367nb enumC1367nb13 = EnumC1367nb.EVENT_TYPE_FIRST_ACTIVATION;
        hashMap2.put(enumC1367nb13, 13);
        EnumC1367nb enumC1367nb14 = EnumC1367nb.EVENT_TYPE_START;
        hashMap2.put(enumC1367nb14, 2);
        EnumC1367nb enumC1367nb15 = EnumC1367nb.EVENT_TYPE_APP_OPEN;
        hashMap2.put(enumC1367nb15, 16);
        EnumC1367nb enumC1367nb16 = EnumC1367nb.EVENT_TYPE_APP_UPDATE;
        hashMap2.put(enumC1367nb16, 17);
        EnumC1367nb enumC1367nb17 = EnumC1367nb.EVENT_TYPE_PERMISSIONS;
        hashMap2.put(enumC1367nb17, 18);
        EnumC1367nb enumC1367nb18 = EnumC1367nb.EVENT_TYPE_APP_FEATURES;
        hashMap2.put(enumC1367nb18, 19);
        EnumC1367nb enumC1367nb19 = EnumC1367nb.EVENT_TYPE_SEND_USER_PROFILE;
        hashMap2.put(enumC1367nb19, 20);
        EnumC1367nb enumC1367nb20 = EnumC1367nb.EVENT_TYPE_SEND_REVENUE_EVENT;
        hashMap2.put(enumC1367nb20, 21);
        EnumC1367nb enumC1367nb21 = EnumC1367nb.EVENT_TYPE_SEND_AD_REVENUE_EVENT;
        hashMap2.put(enumC1367nb21, 40);
        EnumC1367nb enumC1367nb22 = EnumC1367nb.EVENT_TYPE_SEND_ECOMMERCE_EVENT;
        hashMap2.put(enumC1367nb22, 35);
        hashMap2.put(EnumC1367nb.EVENT_TYPE_CLEANUP, 29);
        EnumC1367nb enumC1367nb23 = EnumC1367nb.EVENT_TYPE_WEBVIEW_SYNC;
        hashMap2.put(enumC1367nb23, 38);
        EnumC1367nb enumC1367nb24 = EnumC1367nb.EVENT_CLIENT_EXTERNAL_ATTRIBUTION;
        hashMap2.put(enumC1367nb24, 42);
        f18536c = Collections.unmodifiableMap(hashMap2);
        HashMap hashMap3 = new HashMap();
        F8 f82 = new F8();
        L8 l82 = new L8(new Q8());
        G8 g82 = new G8();
        C1533u3 c1533u3 = new C1533u3(new Q8());
        C1578vn c1578vn = new C1578vn(new Q8());
        Hf hf2 = new Hf();
        C1141e9 a10 = C1166f9.a();
        a10.f19588b = hf2;
        a10.f19589c = hf2;
        C1166f9 c1166f9 = new C1166f9(a10);
        C1141e9 a11 = C1166f9.a();
        a11.f19588b = l82;
        C1166f9 c1166f92 = new C1166f9(a11);
        C1141e9 a12 = C1166f9.a();
        a12.f19588b = c1533u3;
        C1166f9 c1166f93 = new C1166f9(a12);
        C1141e9 a13 = C1166f9.a();
        a13.f19588b = c1578vn;
        C1166f9 c1166f94 = new C1166f9(a13);
        C1141e9 a14 = C1166f9.a();
        a14.f19587a = f82;
        C1166f9 c1166f95 = new C1166f9(a14);
        C1141e9 a15 = C1166f9.a();
        a15.f19588b = new ao(new L8());
        C1166f9 c1166f96 = new C1166f9(a15);
        hashMap3.put(enumC1367nb2, c1166f92);
        C1141e9 a16 = C1166f9.a();
        a16.f19588b = new Jf();
        hashMap3.put(enumC1367nb3, new C1166f9(a16));
        C1141e9 a17 = C1166f9.a();
        a17.f19587a = f82;
        a17.f19588b = g82;
        a17.f19591e = new C1190g8();
        a17.f19592f = new C1215h8();
        hashMap3.put(enumC1367nb4, new C1166f9(a17));
        hashMap3.put(enumC1367nb9, c1166f9);
        hashMap3.put(enumC1367nb10, c1166f9);
        hashMap3.put(enumC1367nb11, c1166f93);
        hashMap3.put(enumC1367nb12, c1166f93);
        hashMap3.put(enumC1367nb5, c1166f93);
        hashMap3.put(enumC1367nb6, c1166f93);
        hashMap3.put(enumC1367nb7, c1166f93);
        hashMap3.put(enumC1367nb8, c1166f93);
        C1141e9 a18 = C1166f9.a();
        a18.f19587a = new F8();
        a18.f19588b = c1533u3;
        hashMap3.put(enumC1367nb14, new C1166f9(a18));
        EnumC1367nb enumC1367nb25 = EnumC1367nb.EVENT_TYPE_CUSTOM_EVENT;
        C1141e9 a19 = C1166f9.a();
        a19.f19590d = new Kf();
        hashMap3.put(enumC1367nb25, new C1166f9(a19));
        hashMap3.put(enumC1367nb15, c1166f92);
        hashMap3.put(enumC1367nb17, c1166f95);
        hashMap3.put(enumC1367nb18, c1166f95);
        hashMap3.put(enumC1367nb19, c1166f93);
        hashMap3.put(enumC1367nb20, c1166f93);
        hashMap3.put(enumC1367nb21, c1166f93);
        hashMap3.put(enumC1367nb22, c1166f94);
        hashMap3.put(enumC1367nb, c1166f96);
        hashMap3.put(enumC1367nb16, c1166f96);
        hashMap3.put(enumC1367nb13, c1166f92);
        hashMap3.put(enumC1367nb23, c1166f92);
        hashMap3.put(enumC1367nb24, c1166f93);
        f18537d = Collections.unmodifiableMap(hashMap3);
    }

    public static C1514t9 a(Long l10, Long l11, Boolean bool) {
        C1514t9 c1514t9 = new C1514t9();
        if (l10 != null) {
            c1514t9.f20663a = l10.longValue();
            c1514t9.f20664b = ((GregorianCalendar) Calendar.getInstance()).getTimeZone().getOffset(l10.longValue() * 1000) / 1000;
        }
        if (l11 != null) {
            c1514t9.f20665c = l11.longValue();
        }
        if (bool != null) {
            c1514t9.f20666d = bool.booleanValue();
        }
        return c1514t9;
    }

    public static void a(C1464r9 c1464r9) {
        C1415p9[] c1415p9Arr = c1464r9.f20521c;
        if (c1415p9Arr != null) {
            for (C1415p9 c1415p9 : c1415p9Arr) {
            }
        }
    }
}
