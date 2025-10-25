package d3;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.provider.Settings;
import android.util.Pair;
import b3.x1;
import java.util.Arrays;
import o6.q;
import o6.r;
/* loaded from: classes.dex */
public final class i {

    /* renamed from: c  reason: collision with root package name */
    public static final i f14468c = new i(new int[]{2}, 8);

    /* renamed from: d  reason: collision with root package name */
    private static final i f14469d = new i(new int[]{2, 5, 6}, 8);

    /* renamed from: e  reason: collision with root package name */
    private static final o6.r f14470e = new r.a().f(5, 6).f(17, 6).f(7, 6).f(18, 6).f(6, 8).f(8, 8).f(14, 8).c();

    /* renamed from: a  reason: collision with root package name */
    private final int[] f14471a;

    /* renamed from: b  reason: collision with root package name */
    private final int f14472b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final AudioAttributes f14473a = new AudioAttributes.Builder().setUsage(1).setContentType(3).setFlags(0).build();

        public static int[] a() {
            boolean isDirectPlaybackSupported;
            q.a r10 = o6.q.r();
            o6.r0 A = i.f14470e.keySet().A();
            while (A.hasNext()) {
                int intValue = ((Integer) A.next()).intValue();
                isDirectPlaybackSupported = AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(intValue).setSampleRate(48000).build(), f14473a);
                if (isDirectPlaybackSupported) {
                    r10.a(Integer.valueOf(intValue));
                }
            }
            r10.a(2);
            return q6.e.k(r10.k());
        }

        public static int b(int i10, int i11) {
            boolean isDirectPlaybackSupported;
            for (int i12 = 8; i12 > 0; i12--) {
                isDirectPlaybackSupported = AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i10).setSampleRate(i11).setChannelMask(y4.q0.G(i12)).build(), f14473a);
                if (isDirectPlaybackSupported) {
                    return i12;
                }
            }
            return 0;
        }
    }

    public i(int[] iArr, int i10) {
        if (iArr != null) {
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            this.f14471a = copyOf;
            Arrays.sort(copyOf);
        } else {
            this.f14471a = new int[0];
        }
        this.f14472b = i10;
    }

    private static boolean b() {
        if (y4.q0.f32946a >= 17) {
            String str = y4.q0.f32948c;
            if ("Amazon".equals(str) || "Xiaomi".equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static i c(Context context) {
        return d(context, context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")));
    }

    static i d(Context context, Intent intent) {
        if (b() && Settings.Global.getInt(context.getContentResolver(), "external_surround_sound_enabled", 0) == 1) {
            return f14469d;
        }
        if (y4.q0.f32946a >= 29 && (y4.q0.w0(context) || y4.q0.r0(context))) {
            return new i(a.a(), 8);
        }
        if (intent != null && intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) != 0) {
            return new i(intent.getIntArrayExtra("android.media.extra.ENCODINGS"), intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 8));
        }
        return f14468c;
    }

    private static int e(int i10) {
        int i11 = y4.q0.f32946a;
        if (i11 <= 28) {
            if (i10 == 7) {
                i10 = 8;
            } else if (i10 == 3 || i10 == 4 || i10 == 5) {
                i10 = 6;
            }
        }
        if (i11 <= 26 && "fugu".equals(y4.q0.f32947b) && i10 == 1) {
            i10 = 2;
        }
        return y4.q0.G(i10);
    }

    private static int g(int i10, int i11) {
        if (y4.q0.f32946a >= 29) {
            return a.b(i10, i11);
        }
        return ((Integer) y4.a.e((Integer) f14470e.getOrDefault(Integer.valueOf(i10), 0))).intValue();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        if (Arrays.equals(this.f14471a, iVar.f14471a) && this.f14472b == iVar.f14472b) {
            return true;
        }
        return false;
    }

    public Pair f(x1 x1Var) {
        int f10 = y4.v.f((String) y4.a.e(x1Var.f4514l), x1Var.f4511i);
        if (!f14470e.containsKey(Integer.valueOf(f10))) {
            return null;
        }
        if (f10 == 18 && !i(18)) {
            f10 = 6;
        } else if (f10 == 8 && !i(8)) {
            f10 = 7;
        }
        if (!i(f10)) {
            return null;
        }
        int i10 = x1Var.f4527y;
        if (i10 != -1 && f10 != 18) {
            if (i10 > this.f14472b) {
                return null;
            }
        } else {
            int i11 = x1Var.f4528z;
            if (i11 == -1) {
                i11 = 48000;
            }
            i10 = g(f10, i11);
        }
        int e10 = e(i10);
        if (e10 == 0) {
            return null;
        }
        return Pair.create(Integer.valueOf(f10), Integer.valueOf(e10));
    }

    public boolean h(x1 x1Var) {
        if (f(x1Var) != null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f14472b + (Arrays.hashCode(this.f14471a) * 31);
    }

    public boolean i(int i10) {
        if (Arrays.binarySearch(this.f14471a, i10) >= 0) {
            return true;
        }
        return false;
    }

    public String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.f14472b + ", supportedEncodings=" + Arrays.toString(this.f14471a) + "]";
    }
}
