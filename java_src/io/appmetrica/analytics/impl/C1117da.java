package io.appmetrica.analytics.impl;

import io.flutter.plugins.firebase.analytics.Constants;
import org.json.JSONObject;
/* renamed from: io.appmetrica.analytics.impl.da  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1117da {

    /* renamed from: a  reason: collision with root package name */
    public final String f19509a;

    /* renamed from: b  reason: collision with root package name */
    public final int f19510b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f19511c;

    public C1117da(JSONObject jSONObject) {
        this.f19509a = jSONObject.getString(Constants.NAME);
        this.f19511c = jSONObject.getBoolean("required");
        this.f19510b = jSONObject.optInt("version", -1);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1117da.class != obj.getClass()) {
            return false;
        }
        C1117da c1117da = (C1117da) obj;
        if (this.f19510b != c1117da.f19510b || this.f19511c != c1117da.f19511c) {
            return false;
        }
        String str = this.f19509a;
        String str2 = c1117da.f19509a;
        if (str != null) {
            return str.equals(str2);
        }
        if (str2 == null) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i10;
        String str = this.f19509a;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        return (((i10 * 31) + this.f19510b) * 31) + (this.f19511c ? 1 : 0);
    }

    public C1117da(String str, int i10, boolean z10) {
        this.f19509a = str;
        this.f19510b = i10;
        this.f19511c = z10;
    }
}
