package a0;

import android.util.Base64;
import java.util.List;
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private final String f19a;

    /* renamed from: b  reason: collision with root package name */
    private final String f20b;

    /* renamed from: c  reason: collision with root package name */
    private final String f21c;

    /* renamed from: d  reason: collision with root package name */
    private final List f22d;

    /* renamed from: e  reason: collision with root package name */
    private final int f23e = 0;

    /* renamed from: f  reason: collision with root package name */
    private final String f24f;

    public e(String str, String str2, String str3, List list) {
        this.f19a = (String) c0.f.g(str);
        this.f20b = (String) c0.f.g(str2);
        this.f21c = (String) c0.f.g(str3);
        this.f22d = (List) c0.f.g(list);
        this.f24f = a(str, str2, str3);
    }

    private String a(String str, String str2, String str3) {
        return str + "-" + str2 + "-" + str3;
    }

    public List b() {
        return this.f22d;
    }

    public int c() {
        return this.f23e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String d() {
        return this.f24f;
    }

    public String e() {
        return this.f19a;
    }

    public String f() {
        return this.f20b;
    }

    public String g() {
        return this.f21c;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("FontRequest {mProviderAuthority: " + this.f19a + ", mProviderPackage: " + this.f20b + ", mQuery: " + this.f21c + ", mCertificates:");
        for (int i10 = 0; i10 < this.f22d.size(); i10++) {
            sb2.append(" [");
            List list = (List) this.f22d.get(i10);
            for (int i11 = 0; i11 < list.size(); i11++) {
                sb2.append(" \"");
                sb2.append(Base64.encodeToString((byte[]) list.get(i11), 0));
                sb2.append("\"");
            }
            sb2.append(" ]");
        }
        sb2.append("}");
        sb2.append("mCertificatesArray: " + this.f23e);
        return sb2.toString();
    }
}
