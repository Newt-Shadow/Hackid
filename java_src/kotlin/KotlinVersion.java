package kotlin;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class KotlinVersion implements Comparable<KotlinVersion> {
    public static final int MAX_COMPONENT_VALUE = 255;
    private final int major;
    private final int minor;
    private final int patch;
    private final int version;
    public static final a Companion = new a(null);
    public static final KotlinVersion CURRENT = kotlin.a.a();

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public KotlinVersion(int i10, int i11, int i12) {
        this.major = i10;
        this.minor = i11;
        this.patch = i12;
        this.version = versionOf(i10, i11, i12);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x001d, code lost:
        if (r0 != false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int versionOf(int r5, int r6, int r7) {
        /*
            r4 = this;
            r0 = 256(0x100, float:3.59E-43)
            r1 = 1
            r2 = 0
            if (r5 < 0) goto La
            if (r5 >= r0) goto La
            r3 = r1
            goto Lb
        La:
            r3 = r2
        Lb:
            if (r3 == 0) goto L20
            if (r6 < 0) goto L13
            if (r6 >= r0) goto L13
            r3 = r1
            goto L14
        L13:
            r3 = r2
        L14:
            if (r3 == 0) goto L20
            if (r7 < 0) goto L1c
            if (r7 >= r0) goto L1c
            r0 = r1
            goto L1d
        L1c:
            r0 = r2
        L1d:
            if (r0 == 0) goto L20
            goto L21
        L20:
            r1 = r2
        L21:
            if (r1 == 0) goto L2a
            int r5 = r5 << 16
            int r6 = r6 << 8
            int r5 = r5 + r6
            int r5 = r5 + r7
            return r5
        L2a:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Version components are out of range: "
            r0.append(r1)
            r0.append(r5)
            r5 = 46
            r0.append(r5)
            r0.append(r6)
            r0.append(r5)
            r0.append(r7)
            java.lang.String r5 = r0.toString()
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
            java.lang.String r5 = r5.toString()
            r6.<init>(r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.KotlinVersion.versionOf(int, int, int):int");
    }

    public boolean equals(Object obj) {
        KotlinVersion kotlinVersion;
        if (this == obj) {
            return true;
        }
        if (obj instanceof KotlinVersion) {
            kotlinVersion = (KotlinVersion) obj;
        } else {
            kotlinVersion = null;
        }
        if (kotlinVersion != null && this.version == kotlinVersion.version) {
            return true;
        }
        return false;
    }

    public final int getMajor() {
        return this.major;
    }

    public final int getMinor() {
        return this.minor;
    }

    public final int getPatch() {
        return this.patch;
    }

    public int hashCode() {
        return this.version;
    }

    public final boolean isAtLeast(int i10, int i11) {
        int i12 = this.major;
        return i12 > i10 || (i12 == i10 && this.minor >= i11);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.major);
        sb2.append('.');
        sb2.append(this.minor);
        sb2.append('.');
        sb2.append(this.patch);
        return sb2.toString();
    }

    @Override // java.lang.Comparable
    public int compareTo(KotlinVersion other) {
        m.e(other, "other");
        return this.version - other.version;
    }

    public KotlinVersion(int i10, int i11) {
        this(i10, i11, 0);
    }

    public final boolean isAtLeast(int i10, int i11, int i12) {
        int i13;
        int i14 = this.major;
        return i14 > i10 || (i14 == i10 && ((i13 = this.minor) > i11 || (i13 == i11 && this.patch >= i12)));
    }
}
