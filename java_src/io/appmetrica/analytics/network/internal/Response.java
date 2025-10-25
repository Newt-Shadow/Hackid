package io.appmetrica.analytics.network.internal;

import io.appmetrica.analytics.network.impl.e;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class Response {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f21242a;

    /* renamed from: b  reason: collision with root package name */
    private final int f21243b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f21244c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f21245d;

    /* renamed from: e  reason: collision with root package name */
    private final Map f21246e;

    /* renamed from: f  reason: collision with root package name */
    private final Throwable f21247f;

    public Response(Throwable th) {
        this(false, 0, new byte[0], new byte[0], new HashMap(), th);
    }

    public int getCode() {
        return this.f21243b;
    }

    public byte[] getErrorData() {
        return this.f21245d;
    }

    public Throwable getException() {
        return this.f21247f;
    }

    public Map<String, List<String>> getHeaders() {
        return this.f21246e;
    }

    public byte[] getResponseData() {
        return this.f21244c;
    }

    public boolean isCompleted() {
        return this.f21242a;
    }

    public String toString() {
        return "Response{completed=" + this.f21242a + ", code=" + this.f21243b + ", responseDataLength=" + this.f21244c.length + ", errorDataLength=" + this.f21245d.length + ", headers=" + this.f21246e + ", exception=" + this.f21247f + '}';
    }

    public Response(boolean z10, int i10, byte[] bArr, byte[] bArr2, Map<String, List<String>> map, Throwable th) {
        Map a10;
        this.f21242a = z10;
        this.f21243b = i10;
        this.f21244c = bArr;
        this.f21245d = bArr2;
        if (map == null) {
            a10 = Collections.emptyMap();
        } else {
            a10 = e.a(map);
        }
        this.f21246e = a10;
        this.f21247f = th;
    }
}
