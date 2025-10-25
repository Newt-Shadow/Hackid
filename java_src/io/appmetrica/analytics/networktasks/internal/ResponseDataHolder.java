package io.appmetrica.analytics.networktasks.internal;

import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class ResponseDataHolder {

    /* renamed from: a  reason: collision with root package name */
    private int f21301a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f21302b;

    /* renamed from: c  reason: collision with root package name */
    private Map f21303c;

    /* renamed from: d  reason: collision with root package name */
    private final ResponseValidityChecker f21304d;

    public ResponseDataHolder(ResponseValidityChecker responseValidityChecker) {
        this.f21304d = responseValidityChecker;
    }

    public int getResponseCode() {
        return this.f21301a;
    }

    public byte[] getResponseData() {
        return this.f21302b;
    }

    public Map<String, List<String>> getResponseHeaders() {
        return this.f21303c;
    }

    public boolean isValidResponse() {
        return this.f21304d.isResponseValid(this.f21301a);
    }

    public void setResponseCode(int i10) {
        this.f21301a = i10;
    }

    public void setResponseData(byte[] bArr) {
        this.f21302b = bArr;
    }

    public void setResponseHeaders(Map<String, List<String>> map) {
        this.f21303c = map;
    }
}
