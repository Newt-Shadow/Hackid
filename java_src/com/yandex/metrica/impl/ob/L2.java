package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.IIdentifierCallback;
import com.yandex.metrica.YandexMetricaConfig;
import com.yandex.metrica.p;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Future;
/* loaded from: classes2.dex */
public final class L2 {

    /* renamed from: a  reason: collision with root package name */
    static Rf f10659a = new Rf(P.g().c(), new Sf());

    public static void a(Context context, IIdentifierCallback iIdentifierCallback, List<String> list) {
        f10659a.a(context, iIdentifierCallback, list);
    }

    public static String b(Context context) {
        return f10659a.b(context);
    }

    public static String c(Context context) {
        return f10659a.c(context);
    }

    public static String d(Context context) {
        return f10659a.d(context);
    }

    public static Future<String> a() {
        return f10659a.a();
    }

    public static Future<Boolean> b() {
        return f10659a.b();
    }

    public static String a(Context context) {
        return f10659a.a(context);
    }

    public static String a(String str) {
        f10659a.getClass();
        return cc.a.b(str, "5.3.0", "45003240");
    }

    public static String a(int i10) {
        f10659a.getClass();
        return Z0.a(i10);
    }

    public static YandexMetricaConfig a(YandexMetricaConfig yandexMetricaConfig, String str) {
        f10659a.getClass();
        return com.yandex.metrica.j.a(yandexMetricaConfig).h(Collections.singletonList(str)).k();
    }

    public static YandexMetricaConfig a(YandexMetricaConfig yandexMetricaConfig, List<String> list) {
        f10659a.getClass();
        return com.yandex.metrica.j.a(yandexMetricaConfig).h(list).k();
    }

    public static void a(Context context, boolean z10) {
        f10659a.a(context, z10);
    }

    public static void a(p.Ucc ucc, boolean z10) {
        f10659a.a(ucc, z10);
    }

    public static void a(Context context, Map<String, Object> map) {
        f10659a.a(context, map);
    }
}
