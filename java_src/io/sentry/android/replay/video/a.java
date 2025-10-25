package io.sentry.android.replay.video;

import java.io.File;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final File f22819a;

    /* renamed from: b  reason: collision with root package name */
    private int f22820b;

    /* renamed from: c  reason: collision with root package name */
    private int f22821c;

    /* renamed from: d  reason: collision with root package name */
    private final int f22822d;

    /* renamed from: e  reason: collision with root package name */
    private final int f22823e;

    /* renamed from: f  reason: collision with root package name */
    private final String f22824f;

    public a(File file, int i10, int i11, int i12, int i13, String mimeType) {
        m.e(file, "file");
        m.e(mimeType, "mimeType");
        this.f22819a = file;
        this.f22820b = i10;
        this.f22821c = i11;
        this.f22822d = i12;
        this.f22823e = i13;
        this.f22824f = mimeType;
    }

    public final int a() {
        return this.f22823e;
    }

    public final File b() {
        return this.f22819a;
    }

    public final int c() {
        return this.f22822d;
    }

    public final String d() {
        return this.f22824f;
    }

    public final int e() {
        return this.f22821c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            return m.a(this.f22819a, aVar.f22819a) && this.f22820b == aVar.f22820b && this.f22821c == aVar.f22821c && this.f22822d == aVar.f22822d && this.f22823e == aVar.f22823e && m.a(this.f22824f, aVar.f22824f);
        }
        return false;
    }

    public final int f() {
        return this.f22820b;
    }

    public int hashCode() {
        return (((((((((this.f22819a.hashCode() * 31) + Integer.hashCode(this.f22820b)) * 31) + Integer.hashCode(this.f22821c)) * 31) + Integer.hashCode(this.f22822d)) * 31) + Integer.hashCode(this.f22823e)) * 31) + this.f22824f.hashCode();
    }

    public String toString() {
        return "MuxerConfig(file=" + this.f22819a + ", recordingWidth=" + this.f22820b + ", recordingHeight=" + this.f22821c + ", frameRate=" + this.f22822d + ", bitRate=" + this.f22823e + ", mimeType=" + this.f22824f + ')';
    }

    public /* synthetic */ a(File file, int i10, int i11, int i12, int i13, String str, int i14, DefaultConstructorMarker defaultConstructorMarker) {
        this(file, i10, i11, i12, i13, (i14 & 32) != 0 ? "video/avc" : str);
    }
}
