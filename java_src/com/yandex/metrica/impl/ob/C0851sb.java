package com.yandex.metrica.impl.ob;

import io.flutter.plugins.firebase.analytics.Constants;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.sb  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0851sb {

    /* renamed from: a  reason: collision with root package name */
    private final String f13581a;

    /* renamed from: b  reason: collision with root package name */
    private final int f13582b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f13583c;

    public C0851sb(JSONObject jSONObject) {
        this.f13581a = jSONObject.getString(Constants.NAME);
        this.f13583c = jSONObject.getBoolean("required");
        this.f13582b = jSONObject.optInt("version", -1);
    }

    public JSONObject a() {
        JSONObject put = new JSONObject().put(Constants.NAME, this.f13581a).put("required", this.f13583c);
        int i10 = this.f13582b;
        if (i10 != -1) {
            put.put("version", i10);
        }
        return put;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0851sb.class != obj.getClass()) {
            return false;
        }
        C0851sb c0851sb = (C0851sb) obj;
        if (this.f13582b != c0851sb.f13582b || this.f13583c != c0851sb.f13583c) {
            return false;
        }
        String str = this.f13581a;
        String str2 = c0851sb.f13581a;
        if (str != null) {
            return str.equals(str2);
        }
        if (str2 == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        String str = this.f13581a;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        return (((i10 * 31) + this.f13582b) * 31) + (this.f13583c ? 1 : 0);
    }

    public C0851sb(String str, int i10, boolean z10) {
        this.f13581a = str;
        this.f13582b = i10;
        this.f13583c = z10;
    }
}
