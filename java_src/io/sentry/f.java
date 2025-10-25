package io.sentry;

import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Queue;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class f extends AbstractCollection implements Queue, Serializable {

    /* renamed from: a  reason: collision with root package name */
    private transient Object[] f23084a;

    /* renamed from: b  reason: collision with root package name */
    private transient int f23085b = 0;

    /* renamed from: c  reason: collision with root package name */
    private transient int f23086c = 0;

    /* renamed from: d  reason: collision with root package name */
    private transient boolean f23087d = false;

    /* renamed from: e  reason: collision with root package name */
    private final int f23088e;

    /* loaded from: classes2.dex */
    class a implements Iterator {

        /* renamed from: a  reason: collision with root package name */
        private int f23089a;

        /* renamed from: b  reason: collision with root package name */
        private int f23090b = -1;

        /* renamed from: c  reason: collision with root package name */
        private boolean f23091c;

        a() {
            this.f23089a = f.this.f23085b;
            this.f23091c = f.this.f23087d;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (!this.f23091c && this.f23089a == f.this.f23086c) {
                return false;
            }
            return true;
        }

        @Override // java.util.Iterator
        public Object next() {
            if (hasNext()) {
                this.f23091c = false;
                int i10 = this.f23089a;
                this.f23090b = i10;
                this.f23089a = f.this.t(i10);
                return f.this.f23084a[this.f23090b];
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            int i10 = this.f23090b;
            if (i10 != -1) {
                if (i10 == f.this.f23085b) {
                    f.this.remove();
                    this.f23090b = -1;
                    return;
                }
                int i11 = this.f23090b + 1;
                if (f.this.f23085b < this.f23090b && i11 < f.this.f23086c) {
                    System.arraycopy(f.this.f23084a, i11, f.this.f23084a, this.f23090b, f.this.f23086c - i11);
                } else {
                    while (i11 != f.this.f23086c) {
                        if (i11 >= f.this.f23088e) {
                            f.this.f23084a[i11 - 1] = f.this.f23084a[0];
                            i11 = 0;
                        } else {
                            f.this.f23084a[f.this.s(i11)] = f.this.f23084a[i11];
                            i11 = f.this.t(i11);
                        }
                    }
                }
                this.f23090b = -1;
                f fVar = f.this;
                fVar.f23086c = fVar.s(fVar.f23086c);
                f.this.f23084a[f.this.f23086c] = null;
                f.this.f23087d = false;
                this.f23089a = f.this.s(this.f23089a);
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(int i10) {
        if (i10 > 0) {
            Object[] objArr = new Object[i10];
            this.f23084a = objArr;
            this.f23088e = objArr.length;
            return;
        }
        throw new IllegalArgumentException("The size must be greater than 0");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int s(int i10) {
        int i11 = i10 - 1;
        if (i11 < 0) {
            return this.f23088e - 1;
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int t(int i10) {
        int i11 = i10 + 1;
        if (i11 >= this.f23088e) {
            return 0;
        }
        return i11;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Queue
    public boolean add(Object obj) {
        if (obj != null) {
            if (y()) {
                remove();
            }
            Object[] objArr = this.f23084a;
            int i10 = this.f23086c;
            int i11 = i10 + 1;
            this.f23086c = i11;
            objArr[i10] = obj;
            if (i11 >= this.f23088e) {
                this.f23086c = 0;
            }
            if (this.f23086c == this.f23085b) {
                this.f23087d = true;
            }
            return true;
        }
        throw new NullPointerException("Attempted to add null object to queue");
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.f23087d = false;
        this.f23085b = 0;
        this.f23086c = 0;
        Arrays.fill(this.f23084a, (Object) null);
    }

    @Override // java.util.Queue
    public Object element() {
        if (!isEmpty()) {
            return peek();
        }
        throw new NoSuchElementException("queue is empty");
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        if (size() == 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return new a();
    }

    @Override // java.util.Queue
    public boolean offer(Object obj) {
        return add(obj);
    }

    @Override // java.util.Queue
    public Object peek() {
        if (isEmpty()) {
            return null;
        }
        return this.f23084a[this.f23085b];
    }

    @Override // java.util.Queue
    public Object poll() {
        if (isEmpty()) {
            return null;
        }
        return remove();
    }

    @Override // java.util.Queue
    public Object remove() {
        if (!isEmpty()) {
            Object[] objArr = this.f23084a;
            int i10 = this.f23085b;
            Object obj = objArr[i10];
            if (obj != null) {
                int i11 = i10 + 1;
                this.f23085b = i11;
                objArr[i10] = null;
                if (i11 >= this.f23088e) {
                    this.f23085b = 0;
                }
                this.f23087d = false;
            }
            return obj;
        }
        throw new NoSuchElementException("queue is empty");
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        int i10;
        int i11 = this.f23086c;
        int i12 = this.f23085b;
        if (i11 < i12) {
            return (this.f23088e - i12) + i11;
        }
        if (i11 == i12) {
            if (this.f23087d) {
                i10 = this.f23088e;
            } else {
                i10 = 0;
            }
            return i10;
        }
        return i11 - i12;
    }

    public boolean y() {
        if (size() == this.f23088e) {
            return true;
        }
        return false;
    }
}
