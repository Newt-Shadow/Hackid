package com.yandex.metrica.networktasks.api;

import com.yandex.metrica.networktasks.api.NetworkTask;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class RequestDataHolder {

    /* renamed from: a  reason: collision with root package name */
    private NetworkTask.Method f14196a = NetworkTask.Method.GET;

    /* renamed from: b  reason: collision with root package name */
    private final Map f14197b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private byte[] f14198c = null;

    /* renamed from: d  reason: collision with root package name */
    private Long f14199d;

    /* renamed from: e  reason: collision with root package name */
    private Integer f14200e;

    public void a(long j10) {
        this.f14199d = Long.valueOf(j10);
        this.f14200e = Integer.valueOf(((GregorianCalendar) Calendar.getInstance()).getTimeZone().getOffset(TimeUnit.MILLISECONDS.toSeconds(j10) * 1000) / 1000);
    }

    public Map b() {
        return this.f14197b;
    }

    public NetworkTask.Method c() {
        return this.f14196a;
    }

    public byte[] d() {
        return this.f14198c;
    }

    public Long e() {
        return this.f14199d;
    }

    public Integer f() {
        return this.f14200e;
    }

    public void g(String str, String... strArr) {
        this.f14197b.put(str, Arrays.asList(strArr));
    }

    public void h(byte[] bArr) {
        this.f14196a = NetworkTask.Method.POST;
        this.f14198c = bArr;
    }
}
