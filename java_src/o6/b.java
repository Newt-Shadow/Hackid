package o6;

import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public abstract class b extends r0 {

    /* renamed from: a  reason: collision with root package name */
    private EnumC0272b f27379a = EnumC0272b.NOT_READY;

    /* renamed from: b  reason: collision with root package name */
    private Object f27380b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f27381a;

        static {
            int[] iArr = new int[EnumC0272b.values().length];
            f27381a = iArr;
            try {
                iArr[EnumC0272b.DONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f27381a[EnumC0272b.READY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o6.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public enum EnumC0272b {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    private boolean d() {
        this.f27379a = EnumC0272b.FAILED;
        this.f27380b = b();
        if (this.f27379a != EnumC0272b.DONE) {
            this.f27379a = EnumC0272b.READY;
            return true;
        }
        return false;
    }

    protected abstract Object b();

    /* JADX INFO: Access modifiers changed from: protected */
    public final Object c() {
        this.f27379a = EnumC0272b.DONE;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        boolean z10;
        if (this.f27379a != EnumC0272b.FAILED) {
            z10 = true;
        } else {
            z10 = false;
        }
        n6.m.n(z10);
        int i10 = a.f27381a[this.f27379a.ordinal()];
        if (i10 == 1) {
            return false;
        }
        if (i10 == 2) {
            return true;
        }
        return d();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (hasNext()) {
            this.f27379a = EnumC0272b.NOT_READY;
            Object a10 = f0.a(this.f27380b);
            this.f27380b = null;
            return a10;
        }
        throw new NoSuchElementException();
    }
}
