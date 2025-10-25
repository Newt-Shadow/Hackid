package r;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public abstract class e implements Iterator, jd.a {

    /* renamed from: a  reason: collision with root package name */
    private int f28818a;

    /* renamed from: b  reason: collision with root package name */
    private int f28819b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f28820c;

    public e(int i10) {
        this.f28818a = i10;
    }

    protected abstract Object b(int i10);

    protected abstract void c(int i10);

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.f28819b < this.f28818a) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public Object next() {
        if (hasNext()) {
            Object b10 = b(this.f28819b);
            this.f28819b++;
            this.f28820c = true;
            return b10;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        if (this.f28820c) {
            int i10 = this.f28819b - 1;
            this.f28819b = i10;
            c(i10);
            this.f28818a--;
            this.f28820c = false;
            return;
        }
        throw new IllegalStateException("Call next() before removing an element.".toString());
    }
}
