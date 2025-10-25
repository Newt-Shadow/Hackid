package n6;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes.dex */
abstract class b implements Iterator {

    /* renamed from: a  reason: collision with root package name */
    private EnumC0256b f26414a = EnumC0256b.NOT_READY;

    /* renamed from: b  reason: collision with root package name */
    private Object f26415b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f26416a;

        static {
            int[] iArr = new int[EnumC0256b.values().length];
            f26416a = iArr;
            try {
                iArr[EnumC0256b.DONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f26416a[EnumC0256b.READY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n6.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public enum EnumC0256b {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    private boolean d() {
        this.f26414a = EnumC0256b.FAILED;
        this.f26415b = b();
        if (this.f26414a != EnumC0256b.DONE) {
            this.f26414a = EnumC0256b.READY;
            return true;
        }
        return false;
    }

    protected abstract Object b();

    /* JADX INFO: Access modifiers changed from: protected */
    public final Object c() {
        this.f26414a = EnumC0256b.DONE;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        boolean z10;
        if (this.f26414a != EnumC0256b.FAILED) {
            z10 = true;
        } else {
            z10 = false;
        }
        m.n(z10);
        int i10 = a.f26416a[this.f26414a.ordinal()];
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
            this.f26414a = EnumC0256b.NOT_READY;
            Object a10 = j.a(this.f26415b);
            this.f26415b = null;
            return a10;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
