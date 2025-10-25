package io.sentry.android.replay;

import io.sentry.t5;
import java.util.Date;
import java.util.List;
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final u f22570a;

    /* renamed from: b  reason: collision with root package name */
    private final h f22571b;

    /* renamed from: c  reason: collision with root package name */
    private final Date f22572c;

    /* renamed from: d  reason: collision with root package name */
    private final int f22573d;

    /* renamed from: e  reason: collision with root package name */
    private final long f22574e;

    /* renamed from: f  reason: collision with root package name */
    private final t5.b f22575f;

    /* renamed from: g  reason: collision with root package name */
    private final String f22576g;

    /* renamed from: h  reason: collision with root package name */
    private final List f22577h;

    public c(u recorderConfig, h cache, Date timestamp, int i10, long j10, t5.b replayType, String str, List events) {
        kotlin.jvm.internal.m.e(recorderConfig, "recorderConfig");
        kotlin.jvm.internal.m.e(cache, "cache");
        kotlin.jvm.internal.m.e(timestamp, "timestamp");
        kotlin.jvm.internal.m.e(replayType, "replayType");
        kotlin.jvm.internal.m.e(events, "events");
        this.f22570a = recorderConfig;
        this.f22571b = cache;
        this.f22572c = timestamp;
        this.f22573d = i10;
        this.f22574e = j10;
        this.f22575f = replayType;
        this.f22576g = str;
        this.f22577h = events;
    }

    public final h a() {
        return this.f22571b;
    }

    public final long b() {
        return this.f22574e;
    }

    public final List c() {
        return this.f22577h;
    }

    public final int d() {
        return this.f22573d;
    }

    public final u e() {
        return this.f22570a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof c) {
            c cVar = (c) obj;
            return kotlin.jvm.internal.m.a(this.f22570a, cVar.f22570a) && kotlin.jvm.internal.m.a(this.f22571b, cVar.f22571b) && kotlin.jvm.internal.m.a(this.f22572c, cVar.f22572c) && this.f22573d == cVar.f22573d && this.f22574e == cVar.f22574e && this.f22575f == cVar.f22575f && kotlin.jvm.internal.m.a(this.f22576g, cVar.f22576g) && kotlin.jvm.internal.m.a(this.f22577h, cVar.f22577h);
        }
        return false;
    }

    public final t5.b f() {
        return this.f22575f;
    }

    public final String g() {
        return this.f22576g;
    }

    public final Date h() {
        return this.f22572c;
    }

    public int hashCode() {
        int hashCode = ((((((((((this.f22570a.hashCode() * 31) + this.f22571b.hashCode()) * 31) + this.f22572c.hashCode()) * 31) + Integer.hashCode(this.f22573d)) * 31) + Long.hashCode(this.f22574e)) * 31) + this.f22575f.hashCode()) * 31;
        String str = this.f22576g;
        return ((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.f22577h.hashCode();
    }

    public String toString() {
        return "LastSegmentData(recorderConfig=" + this.f22570a + ", cache=" + this.f22571b + ", timestamp=" + this.f22572c + ", id=" + this.f22573d + ", duration=" + this.f22574e + ", replayType=" + this.f22575f + ", screenAtStart=" + this.f22576g + ", events=" + this.f22577h + ')';
    }
}
