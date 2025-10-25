package com.yandex.metrica.impl.ob;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes2.dex */
public class Fd implements InterfaceC0949wd {

    /* renamed from: a  reason: collision with root package name */
    private Set<String> f10082a;

    public Fd(List<Bd> list) {
        if (list == null) {
            this.f10082a = new HashSet();
            return;
        }
        this.f10082a = new HashSet(list.size());
        for (Bd bd2 : list) {
            if (bd2.f9788b) {
                this.f10082a.add(bd2.f9787a);
            }
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0949wd
    public boolean a(String str) {
        return this.f10082a.contains(str);
    }

    public String toString() {
        return "StartupBasedPermissionStrategy{mEnabledPermissions=" + this.f10082a + '}';
    }
}
