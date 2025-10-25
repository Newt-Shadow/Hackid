package d3;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
/* loaded from: classes.dex */
final class x {

    /* renamed from: a  reason: collision with root package name */
    private final a f14633a;

    /* renamed from: b  reason: collision with root package name */
    private int f14634b;

    /* renamed from: c  reason: collision with root package name */
    private long f14635c;

    /* renamed from: d  reason: collision with root package name */
    private long f14636d;

    /* renamed from: e  reason: collision with root package name */
    private long f14637e;

    /* renamed from: f  reason: collision with root package name */
    private long f14638f;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final AudioTrack f14639a;

        /* renamed from: b  reason: collision with root package name */
        private final AudioTimestamp f14640b = new AudioTimestamp();

        /* renamed from: c  reason: collision with root package name */
        private long f14641c;

        /* renamed from: d  reason: collision with root package name */
        private long f14642d;

        /* renamed from: e  reason: collision with root package name */
        private long f14643e;

        public a(AudioTrack audioTrack) {
            this.f14639a = audioTrack;
        }

        public long a() {
            return this.f14643e;
        }

        public long b() {
            return this.f14640b.nanoTime / 1000;
        }

        public boolean c() {
            boolean timestamp = this.f14639a.getTimestamp(this.f14640b);
            if (timestamp) {
                long j10 = this.f14640b.framePosition;
                if (this.f14642d > j10) {
                    this.f14641c++;
                }
                this.f14642d = j10;
                this.f14643e = j10 + (this.f14641c << 32);
            }
            return timestamp;
        }
    }

    public x(AudioTrack audioTrack) {
        if (y4.q0.f32946a >= 19) {
            this.f14633a = new a(audioTrack);
            g();
            return;
        }
        this.f14633a = null;
        h(3);
    }

    private void h(int i10) {
        this.f14634b = i10;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2 && i10 != 3) {
                    if (i10 == 4) {
                        this.f14636d = 500000L;
                        return;
                    }
                    throw new IllegalStateException();
                }
                this.f14636d = 10000000L;
                return;
            }
            this.f14636d = 10000L;
            return;
        }
        this.f14637e = 0L;
        this.f14638f = -1L;
        this.f14635c = System.nanoTime() / 1000;
        this.f14636d = 10000L;
    }

    public void a() {
        if (this.f14634b == 4) {
            g();
        }
    }

    public long b() {
        a aVar = this.f14633a;
        if (aVar != null) {
            return aVar.a();
        }
        return -1L;
    }

    public long c() {
        a aVar = this.f14633a;
        if (aVar != null) {
            return aVar.b();
        }
        return -9223372036854775807L;
    }

    public boolean d() {
        if (this.f14634b == 2) {
            return true;
        }
        return false;
    }

    public boolean e(long j10) {
        a aVar = this.f14633a;
        if (aVar == null || j10 - this.f14637e < this.f14636d) {
            return false;
        }
        this.f14637e = j10;
        boolean c10 = aVar.c();
        int i10 = this.f14634b;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            throw new IllegalStateException();
                        }
                    } else if (c10) {
                        g();
                    }
                } else if (!c10) {
                    g();
                }
            } else if (c10) {
                if (this.f14633a.a() > this.f14638f) {
                    h(2);
                }
            } else {
                g();
            }
        } else if (c10) {
            if (this.f14633a.b() < this.f14635c) {
                return false;
            }
            this.f14638f = this.f14633a.a();
            h(1);
        } else if (j10 - this.f14635c > 500000) {
            h(3);
        }
        return c10;
    }

    public void f() {
        h(4);
    }

    public void g() {
        if (this.f14633a != null) {
            h(0);
        }
    }
}
