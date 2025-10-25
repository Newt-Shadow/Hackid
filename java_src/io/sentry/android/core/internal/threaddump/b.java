package io.sentry.android.core.internal.threaddump;

import java.io.BufferedReader;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList f22314a;

    /* renamed from: b  reason: collision with root package name */
    private final int f22315b = 0;

    /* renamed from: c  reason: collision with root package name */
    private final int f22316c;

    /* renamed from: d  reason: collision with root package name */
    public int f22317d;

    public b(ArrayList arrayList) {
        this.f22314a = arrayList;
        this.f22316c = arrayList.size();
    }

    public static b c(BufferedReader bufferedReader) {
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine != null) {
                i10++;
                arrayList.add(new a(i10, readLine));
            } else {
                return new b(arrayList);
            }
        }
    }

    public boolean a() {
        if (this.f22317d < this.f22316c) {
            return true;
        }
        return false;
    }

    public a b() {
        int i10 = this.f22317d;
        if (i10 >= this.f22315b && i10 < this.f22316c) {
            ArrayList arrayList = this.f22314a;
            this.f22317d = i10 + 1;
            return (a) arrayList.get(i10);
        }
        return null;
    }

    public void d() {
        this.f22317d--;
    }
}
