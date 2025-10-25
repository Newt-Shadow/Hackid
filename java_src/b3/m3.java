package b3;

import android.os.Bundle;
import android.view.Surface;
import b3.m3;
import b3.r;
import java.util.ArrayList;
import java.util.List;
import y4.l;
/* loaded from: classes.dex */
public interface m3 {

    /* loaded from: classes.dex */
    public static final class b implements r {

        /* renamed from: b  reason: collision with root package name */
        public static final b f4251b = new a().e();

        /* renamed from: c  reason: collision with root package name */
        private static final String f4252c = y4.q0.q0(0);

        /* renamed from: d  reason: collision with root package name */
        public static final r.a f4253d = new r.a() { // from class: b3.n3
            @Override // b3.r.a
            public final r fromBundle(Bundle bundle) {
                m3.b c10;
                c10 = m3.b.c(bundle);
                return c10;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        private final y4.l f4254a;

        /* loaded from: classes.dex */
        public static final class a {

            /* renamed from: b  reason: collision with root package name */
            private static final int[] f4255b = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 31, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30};

            /* renamed from: a  reason: collision with root package name */
            private final l.b f4256a = new l.b();

            public a a(int i10) {
                this.f4256a.a(i10);
                return this;
            }

            public a b(b bVar) {
                this.f4256a.b(bVar.f4254a);
                return this;
            }

            public a c(int... iArr) {
                this.f4256a.c(iArr);
                return this;
            }

            public a d(int i10, boolean z10) {
                this.f4256a.d(i10, z10);
                return this;
            }

            public b e() {
                return new b(this.f4256a.e());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b c(Bundle bundle) {
            ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList(f4252c);
            if (integerArrayList == null) {
                return f4251b;
            }
            a aVar = new a();
            for (int i10 = 0; i10 < integerArrayList.size(); i10++) {
                aVar.a(integerArrayList.get(i10).intValue());
            }
            return aVar.e();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            return this.f4254a.equals(((b) obj).f4254a);
        }

        public int hashCode() {
            return this.f4254a.hashCode();
        }

        private b(y4.l lVar) {
            this.f4254a = lVar;
        }
    }

    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final y4.l f4257a;

        public c(y4.l lVar) {
            this.f4257a = lVar;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            return this.f4257a.equals(((c) obj).f4257a);
        }

        public int hashCode() {
            return this.f4257a.hashCode();
        }
    }

    /* loaded from: classes.dex */
    public interface d {
        default void onAudioAttributesChanged(d3.e eVar) {
        }

        default void onAudioSessionIdChanged(int i10) {
        }

        default void onAvailableCommandsChanged(b bVar) {
        }

        default void onCues(List list) {
        }

        default void onDeviceInfoChanged(y yVar) {
        }

        default void onDeviceVolumeChanged(int i10, boolean z10) {
        }

        default void onEvents(m3 m3Var, c cVar) {
        }

        default void onIsLoadingChanged(boolean z10) {
        }

        void onIsPlayingChanged(boolean z10);

        default void onLoadingChanged(boolean z10) {
        }

        default void onMaxSeekToPreviousPositionChanged(long j10) {
        }

        default void onMediaItemTransition(f2 f2Var, int i10) {
        }

        default void onMediaMetadataChanged(k2 k2Var) {
        }

        default void onMetadata(t3.a aVar) {
        }

        default void onPlayWhenReadyChanged(boolean z10, int i10) {
        }

        default void onPlaybackParametersChanged(l3 l3Var) {
        }

        void onPlaybackStateChanged(int i10);

        default void onPlaybackSuppressionReasonChanged(int i10) {
        }

        void onPlayerError(i3 i3Var);

        default void onPlayerErrorChanged(i3 i3Var) {
        }

        default void onPlayerStateChanged(boolean z10, int i10) {
        }

        default void onPlaylistMetadataChanged(k2 k2Var) {
        }

        default void onPositionDiscontinuity(int i10) {
        }

        default void onRenderedFirstFrame() {
        }

        default void onRepeatModeChanged(int i10) {
        }

        default void onSeekBackIncrementChanged(long j10) {
        }

        default void onSeekForwardIncrementChanged(long j10) {
        }

        default void onSeekProcessed() {
        }

        default void onShuffleModeEnabledChanged(boolean z10) {
        }

        default void onSkipSilenceEnabledChanged(boolean z10) {
        }

        default void onSurfaceSizeChanged(int i10, int i11) {
        }

        default void onTimelineChanged(g4 g4Var, int i10) {
        }

        default void onTrackSelectionParametersChanged(w4.f0 f0Var) {
        }

        default void onTracksChanged(l4 l4Var) {
        }

        default void onVideoSizeChanged(z4.a0 a0Var) {
        }

        default void onVolumeChanged(float f10) {
        }

        default void onCues(m4.e eVar) {
        }

        default void onPositionDiscontinuity(e eVar, e eVar2, int i10) {
        }
    }

    /* loaded from: classes.dex */
    public static final class e implements r {

        /* renamed from: k  reason: collision with root package name */
        private static final String f4258k = y4.q0.q0(0);

        /* renamed from: l  reason: collision with root package name */
        private static final String f4259l = y4.q0.q0(1);

        /* renamed from: m  reason: collision with root package name */
        private static final String f4260m = y4.q0.q0(2);

        /* renamed from: n  reason: collision with root package name */
        private static final String f4261n = y4.q0.q0(3);

        /* renamed from: o  reason: collision with root package name */
        private static final String f4262o = y4.q0.q0(4);

        /* renamed from: p  reason: collision with root package name */
        private static final String f4263p = y4.q0.q0(5);

        /* renamed from: q  reason: collision with root package name */
        private static final String f4264q = y4.q0.q0(6);

        /* renamed from: r  reason: collision with root package name */
        public static final r.a f4265r = new r.a() { // from class: b3.o3
            @Override // b3.r.a
            public final r fromBundle(Bundle bundle) {
                m3.e b10;
                b10 = m3.e.b(bundle);
                return b10;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final Object f4266a;

        /* renamed from: b  reason: collision with root package name */
        public final int f4267b;

        /* renamed from: c  reason: collision with root package name */
        public final int f4268c;

        /* renamed from: d  reason: collision with root package name */
        public final f2 f4269d;

        /* renamed from: e  reason: collision with root package name */
        public final Object f4270e;

        /* renamed from: f  reason: collision with root package name */
        public final int f4271f;

        /* renamed from: g  reason: collision with root package name */
        public final long f4272g;

        /* renamed from: h  reason: collision with root package name */
        public final long f4273h;

        /* renamed from: i  reason: collision with root package name */
        public final int f4274i;

        /* renamed from: j  reason: collision with root package name */
        public final int f4275j;

        public e(Object obj, int i10, f2 f2Var, Object obj2, int i11, long j10, long j11, int i12, int i13) {
            this.f4266a = obj;
            this.f4267b = i10;
            this.f4268c = i10;
            this.f4269d = f2Var;
            this.f4270e = obj2;
            this.f4271f = i11;
            this.f4272g = j10;
            this.f4273h = j11;
            this.f4274i = i12;
            this.f4275j = i13;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static e b(Bundle bundle) {
            f2 f2Var;
            int i10 = bundle.getInt(f4258k, 0);
            Bundle bundle2 = bundle.getBundle(f4259l);
            if (bundle2 == null) {
                f2Var = null;
            } else {
                f2Var = (f2) f2.f3878o.fromBundle(bundle2);
            }
            return new e(null, i10, f2Var, null, bundle.getInt(f4260m, 0), bundle.getLong(f4261n, 0L), bundle.getLong(f4262o, 0L), bundle.getInt(f4263p, -1), bundle.getInt(f4264q, -1));
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || e.class != obj.getClass()) {
                return false;
            }
            e eVar = (e) obj;
            if (this.f4268c == eVar.f4268c && this.f4271f == eVar.f4271f && this.f4272g == eVar.f4272g && this.f4273h == eVar.f4273h && this.f4274i == eVar.f4274i && this.f4275j == eVar.f4275j && n6.k.a(this.f4266a, eVar.f4266a) && n6.k.a(this.f4270e, eVar.f4270e) && n6.k.a(this.f4269d, eVar.f4269d)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return n6.k.b(this.f4266a, Integer.valueOf(this.f4268c), this.f4269d, this.f4270e, Integer.valueOf(this.f4271f), Long.valueOf(this.f4272g), Long.valueOf(this.f4273h), Integer.valueOf(this.f4274i), Integer.valueOf(this.f4275j));
        }
    }

    void A(int i10);

    boolean C();

    int D();

    int E();

    g4 F();

    boolean G();

    boolean H();

    void b();

    void c(l3 l3Var);

    void e(float f10);

    long f();

    void g(Surface surface);

    long getDuration();

    boolean h();

    long i();

    boolean j();

    int k();

    void l();

    boolean m();

    int n();

    void o(long j10);

    i3 p();

    void q(boolean z10);

    long r();

    void release();

    long s();

    void stop();

    boolean t();

    int u();

    l4 v();

    boolean w();

    void x(d dVar);

    int y();

    int z();
}
