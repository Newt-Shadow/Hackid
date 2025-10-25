package androidx.profileinstaller;
/* loaded from: classes.dex */
enum e {
    DEX_FILES(0),
    EXTRA_DESCRIPTORS(1),
    CLASSES(2),
    METHODS(3),
    AGGREGATION_COUNT(4);
    

    /* renamed from: a  reason: collision with root package name */
    private final long f3121a;

    e(long j10) {
        this.f3121a = j10;
    }

    public long b() {
        return this.f3121a;
    }
}
