package com.yandex.metrica.network;

import com.yandex.metrica.network.impl.e;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class Response {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f14149a;

    /* renamed from: b  reason: collision with root package name */
    private final int f14150b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f14151c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f14152d;

    /* renamed from: e  reason: collision with root package name */
    private final Map f14153e;

    /* renamed from: f  reason: collision with root package name */
    private final Throwable f14154f;

    public Response(Throwable th) {
        this(false, 0, new byte[0], new byte[0], new HashMap(), th);
    }

    public int a() {
        return this.f14150b;
    }

    public byte[] b() {
        return this.f14152d;
    }

    public Throwable c() {
        return this.f14154f;
    }

    public Map d() {
        return this.f14153e;
    }

    public byte[] e() {
        return this.f14151c;
    }

    public boolean f() {
        return this.f14149a;
    }

    public String toString() {
        return "Response{completed=" + this.f14149a + ", code=" + this.f14150b + ", responseDataLength=" + this.f14151c.length + ", errorDataLength=" + this.f14152d.length + ", headers=" + this.f14153e + ", exception=" + this.f14154f + '}';
    }

    public Response(boolean z10, int i10, byte[] bArr, byte[] bArr2, Map map, Throwable th) {
        this.f14149a = z10;
        this.f14150b = i10;
        this.f14151c = bArr;
        this.f14152d = bArr2;
        this.f14153e = map == null ? Collections.emptyMap() : e.a(map);
        this.f14154f = th;
    }
}
