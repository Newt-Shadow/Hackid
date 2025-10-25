package io.sentry.android.replay;

import java.io.File;
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private final File f22749a;

    /* renamed from: b  reason: collision with root package name */
    private final long f22750b;

    /* renamed from: c  reason: collision with root package name */
    private final String f22751c;

    public i(File screenshot, long j10, String str) {
        kotlin.jvm.internal.m.e(screenshot, "screenshot");
        this.f22749a = screenshot;
        this.f22750b = j10;
        this.f22751c = str;
    }

    public final String a() {
        return this.f22751c;
    }

    public final File b() {
        return this.f22749a;
    }

    public final long c() {
        return this.f22750b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof i) {
            i iVar = (i) obj;
            return kotlin.jvm.internal.m.a(this.f22749a, iVar.f22749a) && this.f22750b == iVar.f22750b && kotlin.jvm.internal.m.a(this.f22751c, iVar.f22751c);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((this.f22749a.hashCode() * 31) + Long.hashCode(this.f22750b)) * 31;
        String str = this.f22751c;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "ReplayFrame(screenshot=" + this.f22749a + ", timestamp=" + this.f22750b + ", screen=" + this.f22751c + ')';
    }
}
