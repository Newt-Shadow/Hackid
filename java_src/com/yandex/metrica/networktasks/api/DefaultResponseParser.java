package com.yandex.metrica.networktasks.api;

import org.json.JSONObject;
/* loaded from: classes2.dex */
public class DefaultResponseParser {

    /* loaded from: classes2.dex */
    public class Response {

        /* renamed from: a  reason: collision with root package name */
        public final String f14164a;

        public Response(String str) {
            this.f14164a = str;
        }

        public String toString() {
            return "Response{mStatus='" + this.f14164a + "'}";
        }
    }

    public Response a(byte[] bArr) {
        if (bArr != null) {
            try {
                if (bArr.length > 0) {
                    return new Response(new JSONObject(new String(bArr, "UTF-8")).optString("status"));
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }
}
