package io.sentry.android.replay;

import java.io.File;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final File f22567a;

    /* renamed from: b  reason: collision with root package name */
    private final int f22568b;

    /* renamed from: c  reason: collision with root package name */
    private final long f22569c;

    public b(File video, int i10, long j10) {
        kotlin.jvm.internal.m.e(video, "video");
        this.f22567a = video;
        this.f22568b = i10;
        this.f22569c = j10;
    }

    public final File a() {
        return this.f22567a;
    }

    public final int b() {
        return this.f22568b;
    }

    public final long c() {
        return this.f22569c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            return kotlin.jvm.internal.m.a(this.f22567a, bVar.f22567a) && this.f22568b == bVar.f22568b && this.f22569c == bVar.f22569c;
        }
        return false;
    }

    public int hashCode() {
        return (((this.f22567a.hashCode() * 31) + Integer.hashCode(this.f22568b)) * 31) + Long.hashCode(this.f22569c);
    }

    public String toString() {
        return "GeneratedVideo(video=" + this.f22567a + ", frameCount=" + this.f22568b + ", duration=" + this.f22569c + ')';
    }
}
