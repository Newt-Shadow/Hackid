package e3;

import b3.u1;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public class g extends e3.a {

    /* renamed from: b  reason: collision with root package name */
    public final c f15288b;

    /* renamed from: c  reason: collision with root package name */
    public ByteBuffer f15289c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f15290d;

    /* renamed from: e  reason: collision with root package name */
    public long f15291e;

    /* renamed from: f  reason: collision with root package name */
    public ByteBuffer f15292f;

    /* renamed from: g  reason: collision with root package name */
    private final int f15293g;

    /* renamed from: h  reason: collision with root package name */
    private final int f15294h;

    /* loaded from: classes.dex */
    public static final class a extends IllegalStateException {

        /* renamed from: a  reason: collision with root package name */
        public final int f15295a;

        /* renamed from: b  reason: collision with root package name */
        public final int f15296b;

        public a(int i10, int i11) {
            super("Buffer too small (" + i10 + " < " + i11 + ")");
            this.f15295a = i10;
            this.f15296b = i11;
        }
    }

    static {
        u1.a("goog.exo.decoder");
    }

    public g(int i10) {
        this(i10, 0);
    }

    private ByteBuffer v(int i10) {
        int capacity;
        int i11 = this.f15293g;
        if (i11 == 1) {
            return ByteBuffer.allocate(i10);
        }
        if (i11 == 2) {
            return ByteBuffer.allocateDirect(i10);
        }
        ByteBuffer byteBuffer = this.f15289c;
        if (byteBuffer == null) {
            capacity = 0;
        } else {
            capacity = byteBuffer.capacity();
        }
        throw new a(capacity, i10);
    }

    public static g z() {
        return new g(0);
    }

    public void A(int i10) {
        ByteBuffer byteBuffer = this.f15292f;
        if (byteBuffer != null && byteBuffer.capacity() >= i10) {
            this.f15292f.clear();
        } else {
            this.f15292f = ByteBuffer.allocate(i10);
        }
    }

    @Override // e3.a
    public void l() {
        super.l();
        ByteBuffer byteBuffer = this.f15289c;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.f15292f;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
        this.f15290d = false;
    }

    public void w(int i10) {
        int i11 = i10 + this.f15294h;
        ByteBuffer byteBuffer = this.f15289c;
        if (byteBuffer == null) {
            this.f15289c = v(i11);
            return;
        }
        int capacity = byteBuffer.capacity();
        int position = byteBuffer.position();
        int i12 = i11 + position;
        if (capacity >= i12) {
            this.f15289c = byteBuffer;
            return;
        }
        ByteBuffer v10 = v(i12);
        v10.order(byteBuffer.order());
        if (position > 0) {
            byteBuffer.flip();
            v10.put(byteBuffer);
        }
        this.f15289c = v10;
    }

    public final void x() {
        ByteBuffer byteBuffer = this.f15289c;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
        ByteBuffer byteBuffer2 = this.f15292f;
        if (byteBuffer2 != null) {
            byteBuffer2.flip();
        }
    }

    public final boolean y() {
        return n(1073741824);
    }

    public g(int i10, int i11) {
        this.f15288b = new c();
        this.f15293g = i10;
        this.f15294h = i11;
    }
}
