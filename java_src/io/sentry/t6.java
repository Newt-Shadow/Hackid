package io.sentry;

import java.util.Queue;
/* loaded from: classes2.dex */
final class t6 extends s6 implements Queue {
    private t6(Queue queue) {
        super(queue);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static t6 i(Queue queue) {
        return new t6(queue);
    }

    @Override // java.util.Queue
    public Object element() {
        Object element;
        synchronized (this.f23654b) {
            element = d().element();
        }
        return element;
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        boolean equals;
        if (obj == this) {
            return true;
        }
        synchronized (this.f23654b) {
            equals = d().equals(obj);
        }
        return equals;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.sentry.s6
    /* renamed from: g */
    public Queue d() {
        return (Queue) super.d();
    }

    @Override // java.util.Collection
    public int hashCode() {
        int hashCode;
        synchronized (this.f23654b) {
            hashCode = d().hashCode();
        }
        return hashCode;
    }

    @Override // java.util.Queue
    public boolean offer(Object obj) {
        boolean offer;
        synchronized (this.f23654b) {
            offer = d().offer(obj);
        }
        return offer;
    }

    @Override // java.util.Queue
    public Object peek() {
        Object peek;
        synchronized (this.f23654b) {
            peek = d().peek();
        }
        return peek;
    }

    @Override // java.util.Queue
    public Object poll() {
        Object poll;
        synchronized (this.f23654b) {
            poll = d().poll();
        }
        return poll;
    }

    @Override // java.util.Queue
    public Object remove() {
        Object remove;
        synchronized (this.f23654b) {
            remove = d().remove();
        }
        return remove;
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        Object[] array;
        synchronized (this.f23654b) {
            array = d().toArray();
        }
        return array;
    }

    @Override // java.util.Collection
    public Object[] toArray(Object[] objArr) {
        Object[] array;
        synchronized (this.f23654b) {
            array = d().toArray(objArr);
        }
        return array;
    }
}
