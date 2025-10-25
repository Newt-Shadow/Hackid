package io.appmetrica.analytics.impl;

import org.json.JSONObject;
/* renamed from: io.appmetrica.analytics.impl.rb  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1466rb extends JSONObject {
    public C1466rb() {
    }

    public final Long a(String str) {
        try {
            return Long.valueOf(getLong(str));
        } catch (Throwable unused) {
            return null;
        }
    }

    public final String b(String str) {
        if (has(str)) {
            try {
                return getString(str);
            } catch (Throwable unused) {
            }
        }
        return "";
    }

    public C1466rb(String str) {
        super(str);
    }
}
