package io.appmetrica.analytics.networktasks.internal;

import io.appmetrica.analytics.networktasks.internal.NetworkTask;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class RequestDataHolder {

    /* renamed from: a  reason: collision with root package name */
    private NetworkTask.Method f21296a = NetworkTask.Method.GET;

    /* renamed from: b  reason: collision with root package name */
    private final HashMap f21297b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private byte[] f21298c = null;

    /* renamed from: d  reason: collision with root package name */
    private Long f21299d;

    /* renamed from: e  reason: collision with root package name */
    private Integer f21300e;

    public void applySendTime(long j10) {
        this.f21299d = Long.valueOf(j10);
        this.f21300e = Integer.valueOf(((GregorianCalendar) Calendar.getInstance()).getTimeZone().getOffset(TimeUnit.MILLISECONDS.toSeconds(j10) * 1000) / 1000);
    }

    public Map<String, List<String>> getHeaders() {
        return this.f21297b;
    }

    public NetworkTask.Method getMethod() {
        return this.f21296a;
    }

    public byte[] getPostData() {
        return this.f21298c;
    }

    public Long getSendTimestamp() {
        return this.f21299d;
    }

    public Integer getSendTimezoneSec() {
        return this.f21300e;
    }

    public void setHeader(String str, String... strArr) {
        this.f21297b.put(str, Arrays.asList(strArr));
    }

    public void setPostData(byte[] bArr) {
        this.f21296a = NetworkTask.Method.POST;
        this.f21298c = bArr;
    }
}
