package b3;

import android.content.Context;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Handler;
import b3.m;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    private final AudioManager f4226a;

    /* renamed from: b  reason: collision with root package name */
    private final a f4227b;

    /* renamed from: c  reason: collision with root package name */
    private b f4228c;

    /* renamed from: d  reason: collision with root package name */
    private d3.e f4229d;

    /* renamed from: f  reason: collision with root package name */
    private int f4231f;

    /* renamed from: h  reason: collision with root package name */
    private AudioFocusRequest f4233h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f4234i;

    /* renamed from: g  reason: collision with root package name */
    private float f4232g = 1.0f;

    /* renamed from: e  reason: collision with root package name */
    private int f4230e = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a implements AudioManager.OnAudioFocusChangeListener {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f4235a;

        public a(Handler handler) {
            this.f4235a = handler;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(int i10) {
            m.this.h(i10);
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(final int i10) {
            this.f4235a.post(new Runnable() { // from class: b3.l
                @Override // java.lang.Runnable
                public final void run() {
                    m.a.this.b(i10);
                }
            });
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        void w(float f10);

        void x(int i10);
    }

    public m(Context context, Handler handler, b bVar) {
        this.f4226a = (AudioManager) y4.a.e((AudioManager) context.getApplicationContext().getSystemService("audio"));
        this.f4228c = bVar;
        this.f4227b = new a(handler);
    }

    private void a() {
        this.f4226a.abandonAudioFocus(this.f4227b);
    }

    private void b() {
        if (this.f4230e == 0) {
            return;
        }
        if (y4.q0.f32946a >= 26) {
            c();
        } else {
            a();
        }
        n(0);
    }

    private void c() {
        AudioFocusRequest audioFocusRequest = this.f4233h;
        if (audioFocusRequest != null) {
            this.f4226a.abandonAudioFocusRequest(audioFocusRequest);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static int e(d3.e eVar) {
        if (eVar == null) {
            return 0;
        }
        switch (eVar.f14456c) {
            case 0:
                y4.r.i("AudioFocusManager", "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default.");
                return 1;
            case 1:
            case 14:
                return 1;
            case 2:
            case 4:
                return 2;
            case 3:
                return 0;
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 12:
            case 13:
                break;
            case 11:
                if (eVar.f14454a == 1) {
                    return 2;
                }
                break;
            case 15:
            default:
                y4.r.i("AudioFocusManager", "Unidentified audio usage: " + eVar.f14456c);
                return 0;
            case 16:
                if (y4.q0.f32946a < 19) {
                    return 2;
                }
                return 4;
        }
        return 3;
    }

    private void f(int i10) {
        b bVar = this.f4228c;
        if (bVar != null) {
            bVar.x(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(int i10) {
        if (i10 != -3 && i10 != -2) {
            if (i10 != -1) {
                if (i10 != 1) {
                    y4.r.i("AudioFocusManager", "Unknown focus change type: " + i10);
                    return;
                }
                n(1);
                f(1);
                return;
            }
            f(-1);
            b();
        } else if (i10 != -2 && !q()) {
            n(3);
        } else {
            f(0);
            n(2);
        }
    }

    private int j() {
        int k10;
        if (this.f4230e == 1) {
            return 1;
        }
        if (y4.q0.f32946a >= 26) {
            k10 = l();
        } else {
            k10 = k();
        }
        if (k10 == 1) {
            n(1);
            return 1;
        }
        n(0);
        return -1;
    }

    private int k() {
        return this.f4226a.requestAudioFocus(this.f4227b, y4.q0.f0(((d3.e) y4.a.e(this.f4229d)).f14456c), this.f4231f);
    }

    private int l() {
        AudioFocusRequest.Builder a10;
        AudioFocusRequest.Builder audioAttributes;
        AudioFocusRequest.Builder willPauseWhenDucked;
        AudioFocusRequest.Builder onAudioFocusChangeListener;
        AudioFocusRequest build;
        int requestAudioFocus;
        AudioFocusRequest audioFocusRequest = this.f4233h;
        if (audioFocusRequest == null || this.f4234i) {
            if (audioFocusRequest == null) {
                e.a();
                a10 = d.a(this.f4231f);
            } else {
                e.a();
                a10 = c.a(this.f4233h);
            }
            boolean q10 = q();
            audioAttributes = a10.setAudioAttributes(((d3.e) y4.a.e(this.f4229d)).b().f14460a);
            willPauseWhenDucked = audioAttributes.setWillPauseWhenDucked(q10);
            onAudioFocusChangeListener = willPauseWhenDucked.setOnAudioFocusChangeListener(this.f4227b);
            build = onAudioFocusChangeListener.build();
            this.f4233h = build;
            this.f4234i = false;
        }
        requestAudioFocus = this.f4226a.requestAudioFocus(this.f4233h);
        return requestAudioFocus;
    }

    private void n(int i10) {
        float f10;
        if (this.f4230e == i10) {
            return;
        }
        this.f4230e = i10;
        if (i10 == 3) {
            f10 = 0.2f;
        } else {
            f10 = 1.0f;
        }
        if (this.f4232g == f10) {
            return;
        }
        this.f4232g = f10;
        b bVar = this.f4228c;
        if (bVar != null) {
            bVar.w(f10);
        }
    }

    private boolean o(int i10) {
        if (i10 == 1 || this.f4231f != 1) {
            return true;
        }
        return false;
    }

    private boolean q() {
        d3.e eVar = this.f4229d;
        if (eVar != null && eVar.f14454a == 1) {
            return true;
        }
        return false;
    }

    public float g() {
        return this.f4232g;
    }

    public void i() {
        this.f4228c = null;
        b();
    }

    public void m(d3.e eVar) {
        if (!y4.q0.c(this.f4229d, eVar)) {
            this.f4229d = eVar;
            int e10 = e(eVar);
            this.f4231f = e10;
            boolean z10 = true;
            if (e10 != 1 && e10 != 0) {
                z10 = false;
            }
            y4.a.b(z10, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME.");
        }
    }

    public int p(boolean z10, int i10) {
        if (o(i10)) {
            b();
            if (!z10) {
                return -1;
            }
            return 1;
        } else if (!z10) {
            return -1;
        } else {
            return j();
        }
    }
}
