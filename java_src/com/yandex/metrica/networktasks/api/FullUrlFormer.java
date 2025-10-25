package com.yandex.metrica.networktasks.api;

import android.net.Uri;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class FullUrlFormer {

    /* renamed from: a  reason: collision with root package name */
    private List f14170a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private int f14171b = -1;

    /* renamed from: c  reason: collision with root package name */
    private String f14172c;

    /* renamed from: d  reason: collision with root package name */
    private final IParamsAppender f14173d;

    /* renamed from: e  reason: collision with root package name */
    private final ConfigProvider f14174e;

    public FullUrlFormer(IParamsAppender iParamsAppender, ConfigProvider configProvider) {
        this.f14173d = iParamsAppender;
        this.f14174e = configProvider;
    }

    public void a() {
        Uri.Builder buildUpon = Uri.parse((String) this.f14170a.get(this.f14171b)).buildUpon();
        this.f14173d.appendParams(buildUpon, this.f14174e.getConfig());
        this.f14172c = buildUpon.build().toString();
    }

    public List b() {
        return this.f14170a;
    }

    public String c() {
        return new com.yandex.metrica.networktasks.impl.b(this.f14172c).a();
    }

    public boolean d() {
        return this.f14171b + 1 < this.f14170a.size();
    }

    public void e() {
        this.f14171b++;
    }

    public void f(List list) {
        if (list == null) {
            list = new ArrayList();
        }
        this.f14170a = list;
    }
}
