package qf;

import android.media.AudioAttributes;
import android.media.MediaPlayer;
import java.util.Objects;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f28775a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f28776b;

    /* renamed from: c  reason: collision with root package name */
    private final int f28777c;

    /* renamed from: d  reason: collision with root package name */
    private final int f28778d;

    /* renamed from: e  reason: collision with root package name */
    private final int f28779e;

    /* renamed from: f  reason: collision with root package name */
    private final int f28780f;

    public a(boolean z10, boolean z11, int i10, int i11, int i12, int i13) {
        this.f28775a = z10;
        this.f28776b = z11;
        this.f28777c = i10;
        this.f28778d = i11;
        this.f28779e = i12;
        this.f28780f = i13;
    }

    public static /* synthetic */ a c(a aVar, boolean z10, boolean z11, int i10, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            z10 = aVar.f28775a;
        }
        if ((i14 & 2) != 0) {
            z11 = aVar.f28776b;
        }
        boolean z12 = z11;
        if ((i14 & 4) != 0) {
            i10 = aVar.f28777c;
        }
        int i15 = i10;
        if ((i14 & 8) != 0) {
            i11 = aVar.f28778d;
        }
        int i16 = i11;
        if ((i14 & 16) != 0) {
            i12 = aVar.f28779e;
        }
        int i17 = i12;
        if ((i14 & 32) != 0) {
            i13 = aVar.f28780f;
        }
        return aVar.b(z10, z12, i15, i16, i17, i13);
    }

    public final AudioAttributes a() {
        AudioAttributes build = new AudioAttributes.Builder().setUsage(this.f28778d).setContentType(this.f28777c).build();
        m.d(build, "build(...)");
        return build;
    }

    public final a b(boolean z10, boolean z11, int i10, int i11, int i12, int i13) {
        return new a(z10, z11, i10, i11, i12, i13);
    }

    public final int d() {
        return this.f28779e;
    }

    public final int e() {
        return this.f28780f;
    }

    public boolean equals(Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (this.f28775a == aVar.f28775a && this.f28776b == aVar.f28776b && this.f28777c == aVar.f28777c && this.f28778d == aVar.f28778d && this.f28779e == aVar.f28779e && this.f28780f == aVar.f28780f) {
                return true;
            }
        }
        return false;
    }

    public final boolean f() {
        return this.f28776b;
    }

    public final boolean g() {
        return this.f28775a;
    }

    public final void h(MediaPlayer player) {
        m.e(player, "player");
        player.setAudioAttributes(a());
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(this.f28775a), Boolean.valueOf(this.f28776b), Integer.valueOf(this.f28777c), Integer.valueOf(this.f28778d), Integer.valueOf(this.f28779e), Integer.valueOf(this.f28780f));
    }

    public String toString() {
        return "AudioContextAndroid(isSpeakerphoneOn=" + this.f28775a + ", stayAwake=" + this.f28776b + ", contentType=" + this.f28777c + ", usageType=" + this.f28778d + ", audioFocus=" + this.f28779e + ", audioMode=" + this.f28780f + ')';
    }

    public a() {
        this(false, false, 2, 1, 1, 0);
    }
}
