package com.yandex.metrica.impl.ob;

import android.util.Pair;
/* renamed from: com.yandex.metrica.impl.ob.s  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0839s {

    /* renamed from: a  reason: collision with root package name */
    private C0417am f13566a;

    /* renamed from: b  reason: collision with root package name */
    private long f13567b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f13568c;

    /* renamed from: d  reason: collision with root package name */
    private final C0443bn f13569d;

    /* renamed from: com.yandex.metrica.impl.ob.s$a */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f13570a;

        /* renamed from: b  reason: collision with root package name */
        public final long f13571b;

        public a(String str, long j10) {
            this.f13570a = str;
            this.f13571b = j10;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f13571b != aVar.f13571b) {
                return false;
            }
            String str = this.f13570a;
            String str2 = aVar.f13570a;
            if (str != null) {
                if (str.equals(str2)) {
                    return true;
                }
            } else if (str2 == null) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int i10;
            String str = this.f13570a;
            if (str != null) {
                i10 = str.hashCode();
            } else {
                i10 = 0;
            }
            long j10 = this.f13571b;
            return (i10 * 31) + ((int) (j10 ^ (j10 >>> 32)));
        }
    }

    public C0839s(String str, long j10, C0467cm c0467cm) {
        this(str, j10, new C0443bn(c0467cm, "[App Environment]"));
    }

    public synchronized void a(Pair<String, String> pair) {
        if (this.f13569d.b(this.f13566a, (String) pair.first, (String) pair.second)) {
            this.f13568c = true;
        }
    }

    public synchronized void b() {
        this.f13566a = new C0417am();
    }

    public synchronized String toString() {
        return "Map size " + this.f13566a.size() + ". Is changed " + this.f13568c + ". Current revision " + this.f13567b;
    }

    C0839s(String str, long j10, C0443bn c0443bn) {
        this.f13567b = j10;
        try {
            this.f13566a = new C0417am(str);
        } catch (Throwable unused) {
            this.f13566a = new C0417am();
        }
        this.f13569d = c0443bn;
    }

    public synchronized a a() {
        if (this.f13568c) {
            this.f13567b++;
            this.f13568c = false;
        }
        return new a(Tl.g(this.f13566a), this.f13567b);
    }
}
