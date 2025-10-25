package com.google.android.gms.internal.measurement;

import java.util.AbstractMap;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class bd extends AbstractMap {

    /* renamed from: a  reason: collision with root package name */
    private Object[] f6272a;

    /* renamed from: b  reason: collision with root package name */
    private int f6273b;

    /* renamed from: d  reason: collision with root package name */
    private boolean f6275d;

    /* renamed from: e  reason: collision with root package name */
    private volatile ad f6276e;

    /* renamed from: c  reason: collision with root package name */
    private Map f6274c = Collections.emptyMap();

    /* renamed from: f  reason: collision with root package name */
    private Map f6277f = Collections.emptyMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ bd(byte[] bArr) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public final Object h(int i10) {
        i();
        Object value = ((yc) this.f6272a[i10]).getValue();
        Object[] objArr = this.f6272a;
        System.arraycopy(objArr, i10 + 1, objArr, i10, (this.f6273b - i10) - 1);
        this.f6273b--;
        if (!this.f6274c.isEmpty()) {
            Iterator it = p().entrySet().iterator();
            Object[] objArr2 = this.f6272a;
            int i11 = this.f6273b;
            Map.Entry entry = (Map.Entry) it.next();
            objArr2[i11] = new yc(this, (Comparable) entry.getKey(), entry.getValue());
            this.f6273b++;
            it.remove();
        }
        return value;
    }

    private final int n(Comparable comparable) {
        int i10 = this.f6273b - 1;
        int i11 = 0;
        if (i10 >= 0) {
            int compareTo = comparable.compareTo(((yc) this.f6272a[i10]).a());
            if (compareTo > 0) {
                return -(i10 + 2);
            }
            if (compareTo == 0) {
                return i10;
            }
        }
        while (i11 <= i10) {
            int i12 = (i11 + i10) / 2;
            int compareTo2 = comparable.compareTo(((yc) this.f6272a[i12]).a());
            if (compareTo2 < 0) {
                i10 = i12 - 1;
            } else if (compareTo2 > 0) {
                i11 = i12 + 1;
            } else {
                return i12;
            }
        }
        return -(i11 + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public final void i() {
        if (!this.f6275d) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    private final SortedMap p() {
        i();
        if (this.f6274c.isEmpty() && !(this.f6274c instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f6274c = treeMap;
            this.f6277f = treeMap.descendingMap();
        }
        return (SortedMap) this.f6274c;
    }

    public void a() {
        Map unmodifiableMap;
        Map unmodifiableMap2;
        if (!this.f6275d) {
            if (this.f6274c.isEmpty()) {
                unmodifiableMap = Collections.emptyMap();
            } else {
                unmodifiableMap = Collections.unmodifiableMap(this.f6274c);
            }
            this.f6274c = unmodifiableMap;
            if (this.f6277f.isEmpty()) {
                unmodifiableMap2 = Collections.emptyMap();
            } else {
                unmodifiableMap2 = Collections.unmodifiableMap(this.f6277f);
            }
            this.f6277f = unmodifiableMap2;
            this.f6275d = true;
        }
    }

    public final boolean b() {
        return this.f6275d;
    }

    public final int c() {
        return this.f6273b;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        i();
        if (this.f6273b != 0) {
            this.f6272a = null;
            this.f6273b = 0;
        }
        if (!this.f6274c.isEmpty()) {
            this.f6274c.clear();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        if (n(comparable) < 0 && !this.f6274c.containsKey(comparable)) {
            return false;
        }
        return true;
    }

    public final Map.Entry e(int i10) {
        if (i10 < this.f6273b) {
            return (yc) this.f6272a[i10];
        }
        throw new ArrayIndexOutOfBoundsException(i10);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        if (this.f6276e == null) {
            this.f6276e = new ad(this, null);
        }
        return this.f6276e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bd)) {
            return super.equals(obj);
        }
        bd bdVar = (bd) obj;
        int size = size();
        if (size != bdVar.size()) {
            return false;
        }
        int i10 = this.f6273b;
        if (i10 == bdVar.f6273b) {
            for (int i11 = 0; i11 < i10; i11++) {
                if (!e(i11).equals(bdVar.e(i11))) {
                    return false;
                }
            }
            if (i10 == size) {
                return true;
            }
            return this.f6274c.equals(bdVar.f6274c);
        }
        return entrySet().equals(bdVar.entrySet());
    }

    public final Iterable f() {
        if (this.f6274c.isEmpty()) {
            return Collections.emptySet();
        }
        return this.f6274c.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: g */
    public final Object put(Comparable comparable, Object obj) {
        i();
        int n10 = n(comparable);
        if (n10 >= 0) {
            return ((yc) this.f6272a[n10]).setValue(obj);
        }
        i();
        if (this.f6272a == null) {
            this.f6272a = new Object[16];
        }
        int i10 = -(n10 + 1);
        if (i10 >= 16) {
            return p().put(comparable, obj);
        }
        if (this.f6273b == 16) {
            yc ycVar = (yc) this.f6272a[15];
            this.f6273b = 15;
            p().put(ycVar.a(), ycVar.getValue());
        }
        Object[] objArr = this.f6272a;
        int length = objArr.length;
        System.arraycopy(objArr, i10, objArr, i10 + 1, (16 - i10) - 1);
        this.f6272a[i10] = new yc(this, comparable, obj);
        this.f6273b++;
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int n10 = n(comparable);
        if (n10 >= 0) {
            return ((yc) this.f6272a[n10]).getValue();
        }
        return this.f6274c.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int i10 = this.f6273b;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            i11 += this.f6272a[i12].hashCode();
        }
        if (this.f6274c.size() > 0) {
            return i11 + this.f6274c.hashCode();
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Object[] j() {
        return this.f6272a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ int k() {
        return this.f6273b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Map l() {
        return this.f6274c;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        i();
        Comparable comparable = (Comparable) obj;
        int n10 = n(comparable);
        if (n10 >= 0) {
            return h(n10);
        }
        if (this.f6274c.isEmpty()) {
            return null;
        }
        return this.f6274c.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f6273b + this.f6274c.size();
    }
}
