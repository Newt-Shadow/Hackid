package yc;

import java.util.Enumeration;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class q extends p {

    /* loaded from: classes2.dex */
    public static final class a implements Iterator, jd.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Enumeration f33240a;

        a(Enumeration enumeration) {
            this.f33240a = enumeration;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f33240a.hasMoreElements();
        }

        @Override // java.util.Iterator
        public Object next() {
            return this.f33240a.nextElement();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public static Iterator s(Enumeration enumeration) {
        kotlin.jvm.internal.m.e(enumeration, "<this>");
        return new a(enumeration);
    }
}
