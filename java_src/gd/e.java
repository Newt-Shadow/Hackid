package gd;

import java.io.File;
import java.util.List;
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private final File f16401a;

    /* renamed from: b  reason: collision with root package name */
    private final List f16402b;

    public e(File root, List segments) {
        kotlin.jvm.internal.m.e(root, "root");
        kotlin.jvm.internal.m.e(segments, "segments");
        this.f16401a = root;
        this.f16402b = segments;
    }

    public final File a() {
        return this.f16401a;
    }

    public final List b() {
        return this.f16402b;
    }

    public final int c() {
        return this.f16402b.size();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof e) {
            e eVar = (e) obj;
            return kotlin.jvm.internal.m.a(this.f16401a, eVar.f16401a) && kotlin.jvm.internal.m.a(this.f16402b, eVar.f16402b);
        }
        return false;
    }

    public int hashCode() {
        return (this.f16401a.hashCode() * 31) + this.f16402b.hashCode();
    }

    public String toString() {
        return "FilePathComponents(root=" + this.f16401a + ", segments=" + this.f16402b + ')';
    }
}
