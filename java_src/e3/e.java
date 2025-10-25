package e3;

import y4.q0;
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public int f15276a;

    /* renamed from: b  reason: collision with root package name */
    public int f15277b;

    /* renamed from: c  reason: collision with root package name */
    public int f15278c;

    /* renamed from: d  reason: collision with root package name */
    public int f15279d;

    /* renamed from: e  reason: collision with root package name */
    public int f15280e;

    /* renamed from: f  reason: collision with root package name */
    public int f15281f;

    /* renamed from: g  reason: collision with root package name */
    public int f15282g;

    /* renamed from: h  reason: collision with root package name */
    public int f15283h;

    /* renamed from: i  reason: collision with root package name */
    public int f15284i;

    /* renamed from: j  reason: collision with root package name */
    public int f15285j;

    /* renamed from: k  reason: collision with root package name */
    public long f15286k;

    /* renamed from: l  reason: collision with root package name */
    public int f15287l;

    private void b(long j10, int i10) {
        this.f15286k += j10;
        this.f15287l += i10;
    }

    public void a(long j10) {
        b(j10, 1);
    }

    public synchronized void c() {
    }

    public String toString() {
        return q0.C("DecoderCounters {\n decoderInits=%s,\n decoderReleases=%s\n queuedInputBuffers=%s\n skippedInputBuffers=%s\n renderedOutputBuffers=%s\n skippedOutputBuffers=%s\n droppedBuffers=%s\n droppedInputBuffers=%s\n maxConsecutiveDroppedBuffers=%s\n droppedToKeyframeEvents=%s\n totalVideoFrameProcessingOffsetUs=%s\n videoFrameProcessingOffsetCount=%s\n}", Integer.valueOf(this.f15276a), Integer.valueOf(this.f15277b), Integer.valueOf(this.f15278c), Integer.valueOf(this.f15279d), Integer.valueOf(this.f15280e), Integer.valueOf(this.f15281f), Integer.valueOf(this.f15282g), Integer.valueOf(this.f15283h), Integer.valueOf(this.f15284i), Integer.valueOf(this.f15285j), Long.valueOf(this.f15286k), Integer.valueOf(this.f15287l));
    }
}
