package com.yandex.metrica.networktasks.api;

import java.util.Map;
/* loaded from: classes2.dex */
public class ResponseDataHolder {

    /* renamed from: a  reason: collision with root package name */
    private int f14201a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f14202b;

    /* renamed from: c  reason: collision with root package name */
    private Map f14203c;

    /* renamed from: d  reason: collision with root package name */
    private final ResponseValidityChecker f14204d;

    public ResponseDataHolder(ResponseValidityChecker responseValidityChecker) {
        this.f14204d = responseValidityChecker;
    }

    public int a() {
        return this.f14201a;
    }

    public byte[] b() {
        return this.f14202b;
    }

    public Map c() {
        return this.f14203c;
    }

    public boolean d() {
        return this.f14204d.isResponseValid(this.f14201a);
    }

    public void e(int i10) {
        this.f14201a = i10;
    }

    public void f(byte[] bArr) {
        this.f14202b = bArr;
    }

    public void g(Map map) {
        this.f14203c = map;
    }
}
