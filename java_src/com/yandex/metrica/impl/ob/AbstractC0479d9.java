package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
/* renamed from: com.yandex.metrica.impl.ob.d9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0479d9 {

    /* renamed from: a  reason: collision with root package name */
    private final S7 f12204a;

    /* renamed from: b  reason: collision with root package name */
    private final String f12205b;

    public AbstractC0479d9(S7 s72) {
        this(s72, null);
    }

    public long a(String str, long j10) {
        return this.f12204a.a(str, j10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public <T extends AbstractC0479d9> T b(String str, String str2) {
        synchronized (this) {
            this.f12204a.a(str, str2);
        }
        return this;
    }

    public boolean c(String str) {
        return this.f12204a.a(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Rd d(String str) {
        return new Rd(str, this.f12205b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String e(String str) {
        return this.f12204a.b(str, (String) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends AbstractC0479d9> T f(String str) {
        synchronized (this) {
            this.f12204a.b(str);
        }
        return this;
    }

    public AbstractC0479d9(S7 s72, String str) {
        this.f12204a = s72;
        this.f12205b = str;
    }

    public int a(String str, int i10) {
        return this.f12204a.a(str, i10);
    }

    public Set<String> e() {
        return this.f12204a.a();
    }

    public String a(String str, String str2) {
        return this.f12204a.b(str, str2);
    }

    public boolean a(String str, boolean z10) {
        return this.f12204a.b(str, z10);
    }

    public void d() {
        synchronized (this) {
            this.f12204a.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<String> a(String str, List<String> list) {
        String[] strArr = list == null ? null : (String[]) list.toArray(new String[list.size()]);
        String b10 = this.f12204a.b(str, (String) null);
        if (!TextUtils.isEmpty(b10)) {
            try {
                JSONArray jSONArray = new JSONArray(b10);
                strArr = new String[jSONArray.length()];
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    strArr[i10] = jSONArray.optString(i10);
                }
            } catch (Throwable unused) {
            }
        }
        if (strArr == null) {
            return null;
        }
        return Arrays.asList(strArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends AbstractC0479d9> T b(String str, long j10) {
        synchronized (this) {
            this.f12204a.b(str, j10);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public <T extends AbstractC0479d9> T b(String str, int i10) {
        synchronized (this) {
            this.f12204a.b(str, i10);
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends AbstractC0479d9> T b(String str, boolean z10) {
        synchronized (this) {
            this.f12204a.a(str, z10);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public <T extends AbstractC0479d9> T b(String str, List<String> list) {
        String str2;
        String[] strArr = (String[]) list.toArray(new String[list.size()]);
        try {
            JSONArray jSONArray = new JSONArray();
            for (String str3 : strArr) {
                jSONArray.put(str3);
            }
            str2 = jSONArray.toString();
        } catch (Throwable unused) {
            str2 = null;
        }
        this.f12204a.a(str, str2);
        return this;
    }
}
