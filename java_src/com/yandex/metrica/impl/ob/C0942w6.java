package com.yandex.metrica.impl.ob;

import java.util.Collections;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.w6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0942w6 {

    /* renamed from: a  reason: collision with root package name */
    public final E6 f13856a;

    /* renamed from: b  reason: collision with root package name */
    public final List<E6> f13857b;

    /* renamed from: c  reason: collision with root package name */
    public final String f13858c;

    public C0942w6(E6 e62, List<E6> list, String str) {
        List<E6> c10;
        this.f13856a = e62;
        if (list == null) {
            c10 = Collections.emptyList();
        } else {
            c10 = A2.c(list);
        }
        this.f13857b = c10;
        this.f13858c = str;
    }
}
