package b3;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import d3.i0;
import java.util.ArrayList;
import s3.l;
/* loaded from: classes.dex */
public class w implements w3 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f4476a;

    /* renamed from: e  reason: collision with root package name */
    private boolean f4480e;

    /* renamed from: g  reason: collision with root package name */
    private boolean f4482g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f4483h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f4484i;

    /* renamed from: b  reason: collision with root package name */
    private final s3.j f4477b = new s3.j();

    /* renamed from: c  reason: collision with root package name */
    private int f4478c = 0;

    /* renamed from: d  reason: collision with root package name */
    private long f4479d = 5000;

    /* renamed from: f  reason: collision with root package name */
    private s3.w f4481f = s3.w.f29402a;

    public w(Context context) {
        this.f4476a = context;
    }

    @Override // b3.w3
    public t3[] a(Handler handler, z4.y yVar, d3.v vVar, m4.n nVar, t3.e eVar) {
        ArrayList arrayList = new ArrayList();
        h(this.f4476a, this.f4478c, this.f4481f, this.f4480e, handler, yVar, this.f4479d, arrayList);
        d3.w c10 = c(this.f4476a, this.f4482g, this.f4483h, this.f4484i);
        if (c10 != null) {
            b(this.f4476a, this.f4478c, this.f4481f, this.f4480e, c10, handler, vVar, arrayList);
        }
        g(this.f4476a, nVar, handler.getLooper(), this.f4478c, arrayList);
        e(this.f4476a, eVar, handler.getLooper(), this.f4478c, arrayList);
        d(this.f4476a, this.f4478c, arrayList);
        f(this.f4476a, handler, this.f4478c, arrayList);
        return (t3[]) arrayList.toArray(new t3[0]);
    }

    protected void b(Context context, int i10, s3.w wVar, boolean z10, d3.w wVar2, Handler handler, d3.v vVar, ArrayList arrayList) {
        int i11;
        d3.w wVar3;
        Handler handler2;
        String str;
        int i12;
        int i13;
        arrayList.add(new d3.s0(context, i(), wVar, z10, handler, vVar, wVar2));
        if (i10 == 0) {
            return;
        }
        int size = arrayList.size();
        if (i10 == 2) {
            size--;
        }
        try {
            try {
                i11 = size + 1;
                try {
                    arrayList.add(size, (t3) Class.forName("com.google.android.exoplayer2.decoder.midi.MidiRenderer").getConstructor(new Class[0]).newInstance(new Object[0]));
                    y4.r.f("DefaultRenderersFactory", "Loaded MidiRenderer.");
                } catch (ClassNotFoundException unused) {
                    size = i11;
                    i11 = size;
                    try {
                        wVar3 = wVar2;
                        handler2 = handler;
                        str = "DefaultRenderersFactory";
                        try {
                            i12 = i11 + 1;
                            try {
                                arrayList.add(i11, (t3) Class.forName("com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer").getConstructor(Handler.class, d3.v.class, d3.w.class).newInstance(handler2, vVar, wVar3));
                                y4.r.f(str, "Loaded LibopusAudioRenderer.");
                            } catch (ClassNotFoundException unused2) {
                                i11 = i12;
                                i12 = i11;
                                try {
                                    i13 = i12 + 1;
                                    arrayList.add(i12, (t3) Class.forName("com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer").getConstructor(Handler.class, d3.v.class, d3.w.class).newInstance(handler2, vVar, wVar3));
                                    y4.r.f(str, "Loaded LibflacAudioRenderer.");
                                } catch (ClassNotFoundException unused3) {
                                }
                                arrayList.add(i13, (t3) Class.forName("com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer").getConstructor(Handler.class, d3.v.class, d3.w.class).newInstance(handler2, vVar, wVar3));
                                y4.r.f(str, "Loaded FfmpegAudioRenderer.");
                            }
                        } catch (ClassNotFoundException unused4) {
                        }
                    } catch (ClassNotFoundException unused5) {
                        wVar3 = wVar2;
                        handler2 = handler;
                        str = "DefaultRenderersFactory";
                    }
                    try {
                        i13 = i12 + 1;
                        arrayList.add(i12, (t3) Class.forName("com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer").getConstructor(Handler.class, d3.v.class, d3.w.class).newInstance(handler2, vVar, wVar3));
                        y4.r.f(str, "Loaded LibflacAudioRenderer.");
                        arrayList.add(i13, (t3) Class.forName("com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer").getConstructor(Handler.class, d3.v.class, d3.w.class).newInstance(handler2, vVar, wVar3));
                        y4.r.f(str, "Loaded FfmpegAudioRenderer.");
                    } catch (Exception e10) {
                        throw new RuntimeException("Error instantiating FLAC extension", e10);
                    }
                }
            } catch (Exception e11) {
                throw new RuntimeException("Error instantiating MIDI extension", e11);
            }
        } catch (ClassNotFoundException unused6) {
        }
        try {
            wVar3 = wVar2;
            handler2 = handler;
            str = "DefaultRenderersFactory";
            i12 = i11 + 1;
            arrayList.add(i11, (t3) Class.forName("com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer").getConstructor(Handler.class, d3.v.class, d3.w.class).newInstance(handler2, vVar, wVar3));
            y4.r.f(str, "Loaded LibopusAudioRenderer.");
            i13 = i12 + 1;
            try {
                arrayList.add(i12, (t3) Class.forName("com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer").getConstructor(Handler.class, d3.v.class, d3.w.class).newInstance(handler2, vVar, wVar3));
                y4.r.f(str, "Loaded LibflacAudioRenderer.");
            } catch (ClassNotFoundException unused7) {
                i12 = i13;
                i13 = i12;
                arrayList.add(i13, (t3) Class.forName("com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer").getConstructor(Handler.class, d3.v.class, d3.w.class).newInstance(handler2, vVar, wVar3));
                y4.r.f(str, "Loaded FfmpegAudioRenderer.");
            }
            try {
                arrayList.add(i13, (t3) Class.forName("com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer").getConstructor(Handler.class, d3.v.class, d3.w.class).newInstance(handler2, vVar, wVar3));
                y4.r.f(str, "Loaded FfmpegAudioRenderer.");
            } catch (ClassNotFoundException unused8) {
            } catch (Exception e12) {
                throw new RuntimeException("Error instantiating FFmpeg extension", e12);
            }
        } catch (Exception e13) {
            throw new RuntimeException("Error instantiating Opus extension", e13);
        }
    }

    protected d3.w c(Context context, boolean z10, boolean z11, boolean z12) {
        return new i0.f().g(d3.i.c(context)).i(z10).h(z11).j(z12 ? 1 : 0).f();
    }

    protected void d(Context context, int i10, ArrayList arrayList) {
        arrayList.add(new a5.b());
    }

    protected void e(Context context, t3.e eVar, Looper looper, int i10, ArrayList arrayList) {
        arrayList.add(new t3.f(eVar, looper));
    }

    protected void f(Context context, Handler handler, int i10, ArrayList arrayList) {
    }

    protected void g(Context context, m4.n nVar, Looper looper, int i10, ArrayList arrayList) {
        arrayList.add(new m4.o(nVar, looper));
    }

    protected void h(Context context, int i10, s3.w wVar, boolean z10, Handler handler, z4.y yVar, long j10, ArrayList arrayList) {
        int i11;
        arrayList.add(new z4.i(context, i(), wVar, j10, z10, handler, yVar, 50));
        if (i10 == 0) {
            return;
        }
        int size = arrayList.size();
        if (i10 == 2) {
            size--;
        }
        try {
            try {
                i11 = size + 1;
                try {
                    arrayList.add(size, (t3) Class.forName("com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer").getConstructor(Long.TYPE, Handler.class, z4.y.class, Integer.TYPE).newInstance(Long.valueOf(j10), handler, yVar, 50));
                    y4.r.f("DefaultRenderersFactory", "Loaded LibvpxVideoRenderer.");
                } catch (ClassNotFoundException unused) {
                    size = i11;
                    i11 = size;
                    arrayList.add(i11, (t3) Class.forName("com.google.android.exoplayer2.ext.av1.Libgav1VideoRenderer").getConstructor(Long.TYPE, Handler.class, z4.y.class, Integer.TYPE).newInstance(Long.valueOf(j10), handler, yVar, 50));
                    y4.r.f("DefaultRenderersFactory", "Loaded Libgav1VideoRenderer.");
                }
            } catch (Exception e10) {
                throw new RuntimeException("Error instantiating VP9 extension", e10);
            }
        } catch (ClassNotFoundException unused2) {
        }
        try {
            arrayList.add(i11, (t3) Class.forName("com.google.android.exoplayer2.ext.av1.Libgav1VideoRenderer").getConstructor(Long.TYPE, Handler.class, z4.y.class, Integer.TYPE).newInstance(Long.valueOf(j10), handler, yVar, 50));
            y4.r.f("DefaultRenderersFactory", "Loaded Libgav1VideoRenderer.");
        } catch (ClassNotFoundException unused3) {
        } catch (Exception e11) {
            throw new RuntimeException("Error instantiating AV1 extension", e11);
        }
    }

    protected l.b i() {
        return this.f4477b;
    }
}
