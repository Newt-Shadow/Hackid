package sa;

import android.media.CamcorderProfile;
import android.media.MediaRecorder;
import android.os.Build;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final String f29570a;

    /* renamed from: b  reason: collision with root package name */
    private final CamcorderProfile f29571b;

    /* renamed from: c  reason: collision with root package name */
    private final C0307a f29572c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f29573d;

    /* renamed from: e  reason: collision with root package name */
    private int f29574e;

    /* renamed from: f  reason: collision with root package name */
    private final ta.a f29575f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: sa.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0307a {
        C0307a() {
        }

        MediaRecorder a() {
            return new MediaRecorder();
        }
    }

    public a(CamcorderProfile camcorderProfile, String str, ta.a aVar) {
        this(camcorderProfile, str, new C0307a(), aVar);
    }

    private MediaRecorder b(boolean z10) {
        MediaRecorder a10 = this.f29572c.a();
        if (this.f29573d) {
            a10.setAudioSource(1);
        }
        a10.setVideoSource(2);
        if (this.f29571b != null) {
            if (this.f29575f.e().equals("ts") && Build.VERSION.SDK_INT >= 26) {
                a10.setOutputFormat(8);
            }
            if (this.f29575f.e().equals("webm") && Build.VERSION.SDK_INT >= 26) {
                a10.setOutputFormat(9);
            } else {
                a10.setOutputFormat(this.f29571b.fileFormat);
            }
            if (this.f29573d) {
                a10.setAudioEncoder(this.f29571b.audioCodec);
                a10.setAudioEncodingBitRate(this.f29571b.audioBitRate);
                a10.setAudioSamplingRate(this.f29571b.audioSampleRate);
            }
            if (z10 && this.f29575f.i() != null) {
                a10.setVideoEncoder(this.f29575f.i().intValue());
            } else {
                a10.setVideoEncoder(this.f29571b.videoCodec);
            }
            if (z10 && this.f29575f.c() != null && this.f29575f.c().intValue() < this.f29571b.videoBitRate) {
                a10.setVideoEncodingBitRate(this.f29575f.c().intValue());
            } else {
                a10.setVideoEncodingBitRate(this.f29571b.videoBitRate);
            }
            if (z10 && this.f29575f.f() != null && this.f29575f.f().intValue() < this.f29571b.videoFrameRate) {
                a10.setVideoFrameRate(this.f29575f.f().intValue());
            } else {
                a10.setVideoFrameRate(this.f29571b.videoFrameRate);
            }
            CamcorderProfile camcorderProfile = this.f29571b;
            a10.setVideoSize(camcorderProfile.videoFrameWidth, camcorderProfile.videoFrameHeight);
        }
        a10.setOutputFile(this.f29570a);
        a10.setOrientationHint(this.f29574e);
        if (this.f29575f.g() != null) {
            a10.setMaxFileSize(this.f29575f.g().intValue());
        }
        return a10;
    }

    public MediaRecorder a() {
        try {
            MediaRecorder b10 = b(true);
            b10.prepare();
            return b10;
        } catch (Exception unused) {
            MediaRecorder b11 = b(false);
            b11.prepare();
            return b11;
        }
    }

    public a c(boolean z10) {
        this.f29573d = z10;
        return this;
    }

    public a d(int i10) {
        this.f29574e = i10;
        return this;
    }

    a(CamcorderProfile camcorderProfile, String str, C0307a c0307a, ta.a aVar) {
        this.f29570a = str;
        this.f29571b = camcorderProfile;
        this.f29575f = aVar;
        this.f29572c = c0307a;
    }
}
