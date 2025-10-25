package com.google.crypto.tink.shaded.protobuf;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* loaded from: classes.dex */
public class m1 extends AbstractList implements d0, RandomAccess {

    /* renamed from: a  reason: collision with root package name */
    private final d0 f8505a;

    /* loaded from: classes.dex */
    class a implements ListIterator {

        /* renamed from: a  reason: collision with root package name */
        ListIterator f8506a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f8507b;

        a(int i10) {
            this.f8507b = i10;
            this.f8506a = m1.this.f8505a.listIterator(i10);
        }

        @Override // java.util.ListIterator
        /* renamed from: b */
        public void add(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        /* renamed from: c */
        public String next() {
            return (String) this.f8506a.next();
        }

        @Override // java.util.ListIterator
        /* renamed from: d */
        public String previous() {
            return (String) this.f8506a.previous();
        }

        @Override // java.util.ListIterator
        /* renamed from: e */
        public void set(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f8506a.hasNext();
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f8506a.hasPrevious();
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f8506a.nextIndex();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f8506a.previousIndex();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes.dex */
    class b implements Iterator {

        /* renamed from: a  reason: collision with root package name */
        Iterator f8509a;

        b() {
            this.f8509a = m1.this.f8505a.iterator();
        }

        @Override // java.util.Iterator
        /* renamed from: b */
        public String next() {
            return (String) this.f8509a.next();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f8509a.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public m1(d0 d0Var) {
        this.f8505a = d0Var;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d0
    public void A0(h hVar) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d0
    public d0 D0() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: g */
    public String get(int i10) {
        return (String) this.f8505a.get(i10);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator iterator() {
        return new b();
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator listIterator(int i10) {
        return new a(i10);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d0
    public List q() {
        return this.f8505a.q();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f8505a.size();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d0
    public Object v(int i10) {
        return this.f8505a.v(i10);
    }
}
