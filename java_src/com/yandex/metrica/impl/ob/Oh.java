package com.yandex.metrica.impl.ob;

import android.util.Pair;
import java.util.List;
/* loaded from: classes2.dex */
public class Oh {

    /* renamed from: a  reason: collision with root package name */
    public final List<Pair<String, a>> f11004a;

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f11005a;

        public a(String str) {
            this.f11005a = str;
        }

        public String toString() {
            return this.f11005a;
        }
    }

    public Oh(List<Pair<String, a>> list) {
        this.f11004a = list;
    }

    public String toString() {
        return "AttributionConfig{deeplinkConditions=" + this.f11004a + '}';
    }
}
