package io.sentry.android.replay.video;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import java.nio.ByteBuffer;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final long f22825a;

    /* renamed from: b  reason: collision with root package name */
    private final MediaMuxer f22826b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f22827c;

    /* renamed from: d  reason: collision with root package name */
    private int f22828d;

    /* renamed from: e  reason: collision with root package name */
    private int f22829e;

    /* renamed from: f  reason: collision with root package name */
    private long f22830f;

    public b(String path, float f10) {
        m.e(path, "path");
        this.f22825a = ((float) TimeUnit.SECONDS.toMicros(1L)) / f10;
        this.f22826b = new MediaMuxer(path, 0);
    }

    public long a() {
        if (this.f22829e == 0) {
            return 0L;
        }
        return TimeUnit.MILLISECONDS.convert(this.f22830f + this.f22825a, TimeUnit.MICROSECONDS);
    }

    public boolean b() {
        return this.f22827c;
    }

    public void c(ByteBuffer encodedData, MediaCodec.BufferInfo bufferInfo) {
        m.e(encodedData, "encodedData");
        m.e(bufferInfo, "bufferInfo");
        long j10 = this.f22825a;
        int i10 = this.f22829e;
        this.f22829e = i10 + 1;
        long j11 = j10 * i10;
        this.f22830f = j11;
        bufferInfo.presentationTimeUs = j11;
        this.f22826b.writeSampleData(this.f22828d, encodedData, bufferInfo);
    }

    public void d() {
        this.f22826b.stop();
        this.f22826b.release();
    }

    public void e(MediaFormat videoFormat) {
        m.e(videoFormat, "videoFormat");
        this.f22828d = this.f22826b.addTrack(videoFormat);
        this.f22826b.start();
        this.f22827c = true;
    }
}
