package m5;

import com.google.android.gms.common.api.a;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final int f25754a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.gms.common.api.a f25755b;

    /* renamed from: c  reason: collision with root package name */
    private final a.d f25756c;

    /* renamed from: d  reason: collision with root package name */
    private final String f25757d;

    private b(com.google.android.gms.common.api.a aVar, a.d dVar, String str) {
        this.f25755b = aVar;
        this.f25756c = dVar;
        this.f25757d = str;
        this.f25754a = n5.o.b(aVar, dVar, str);
    }

    public static b a(com.google.android.gms.common.api.a aVar, a.d dVar, String str) {
        return new b(aVar, dVar, str);
    }

    public final String b() {
        return this.f25755b.c();
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (!n5.o.a(this.f25755b, bVar.f25755b) || !n5.o.a(this.f25756c, bVar.f25756c) || !n5.o.a(this.f25757d, bVar.f25757d)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.f25754a;
    }
}
